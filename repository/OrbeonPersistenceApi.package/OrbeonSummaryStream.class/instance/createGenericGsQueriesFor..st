queries
createGenericGsQueriesFor: collectionOfOrbeonQueryNode
	"The receiver create the <GsQuery> for a generic search.
	The user has set a value to search but the field name is NOT know. Can be any field search.
	The generic search behave like OR search any match with any field is valid"
	| nodesWithQuery gsQueries |

	gsQueries := Dictionary new.
	nodesWithQuery := collectionOfOrbeonQueryNode select: [:each | each hasValueAndNoName].
	nodesWithQuery isEmpty ifTrue: [^#()].

	nodesWithQuery do: [:each | 
		each beGeneric. "set the query node as generic -like an OR search-"
		(self application getAllSearchFieldsOf: self formName) do: [:fieldName | | type stream gsQuery stValue queryString |
			stream := PrintStream on: String new.
			type := self formDefinition stTypeOf: each name.
			stValue := (type == String) ifTrue: [each value] ifFalse: [type fromOrbeonString: each value].
			stream nextPutAll: '(each.value = stValue) & '.
			queryString := stream contents allButLast: 3.
			gsQuery := GsQuery fromString: queryString.
			gsQuery bind: 'stValue' to: stValue.
			gsQueries at: fieldName put: gsQuery.
			stream close]].

	^gsQueries