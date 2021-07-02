fetch fields
fetchFieldInstances
	| gsQueries result andResult orResult allDefinitions querySize |

	result := Dictionary new.
	"create all <GsQuery> for each field with a search value"
	gsQueries := self createGsQueriesFor: summary queryNodes. "aDictionary (fieldName-->aGsQuery)"
	allDefinitions := self getAllDefinitions.
	gsQueries keysAndValuesDo: [:fieldName :gsQuery | | rcIdentitySet |
		result at: fieldName put: OrderedCollection new.
		allDefinitions do: [:eachDef |
			rcIdentitySet := eachDef fieldInstancesOf: fieldName."get the collection of ALL field's values of <fieldName>"
			gsQuery on: rcIdentitySet. "set the collection of the <GsQuery>"
			(result at: fieldName) addAll: gsQuery queryResult.
			querySize := rcIdentitySet size.
		]
	]."Excecute the <GsQuery> and store it on <result> dictionary"

	summary setTotalFormsSize: querySize.
	result isEmpty ifTrue: [^self].

	"perform an OR search if OR is setted - (OR or AND search is useful when the search has more than one search criteria)"
	((self getOrbeonWebServerConfiguration typeSearchIsOr: self formName in: self applicationName) or: [self isGenericSearch])
	ifTrue: [orResult := Set new.
		result do: [:queryResult | orResult addAll: queryResult].
		orResult  := (orResult collect: [:each | each parentObject]) asOrderedCollection.
		^self fetchFieldInstancesOn: orResult "filter by permissions"].

	"perform an AND search"
	andResult := (OrderedCollection withAll: (result at: result keys asArray first)) collect: [:each | each parentObject].

	result asOrderedCollection allButFirst do: [:queryResult | andResult := andResult intersection: (queryResult collect: [:each | each parentObject])].
	"filter by permissions"
	^self fetchFieldInstancesOn: andResult