queries
createGsQueriesFor: collectionOfOrbeonQueryNode
	"The receiver answer a Dictionary of GsQuery from the collection <collectionOfOrbeonQueryNode> of query nodes <OrbeonQueryNode>.
	The dictionary's keys is the name of the field and the value is the GsQuery"
	| nodesWithQuery gsQueries |

	gsQueries := Dictionary new.
	nodesWithQuery := collectionOfOrbeonQueryNode select: [:each | each isSearchAndHasValue].
	nodesWithQuery isEmpty ifTrue: [^self createGenericGsQueriesFor: collectionOfOrbeonQueryNode].

	nodesWithQuery do: [:each | | stream type gsQuery stValue |
		stream := PrintStream on: String new.
		type := self formDefinition stTypeOf: each name.
		"searchValues at: each name put: each value."
		stValue := (type == String) ifTrue: [each value] ifFalse: [type fromOrbeonString: each value].
		stream nextPutAll: '(each.value = stValue)'.
		gsQuery := GsQuery fromString: stream contents.
		gsQuery bind: 'stValue' to: stValue.
		gsQueries at: each name put: gsQuery.
		stream close.].

	^gsQueries