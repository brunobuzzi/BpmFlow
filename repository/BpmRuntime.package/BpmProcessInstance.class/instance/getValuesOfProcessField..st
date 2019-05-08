execution query
getValuesOfProcessField: fieldName
	"Answer aCollection of values of field named <fieldName> in the receiver's collection of <executedActivities>.
	The search is performed only in activities that have anOrbeonFormInstance <hasForm>.
	If the field <fieldName> is a repeatable field then use #getValueOfProcessField: (the method without s in Values) otherwise this method will answer <aCollection> inside <aCollection> of values"
	| values |

	values := OrderedCollection new.

	self getProcessesTreeAsCollection do: [:eachProcInstance |  
	
		(eachProcInstance getExecutedArtifactsReversed select: [:each | each hasForm]) 
			do: [:each | (each getValueOfFormField: fieldName) ifNotNil: [:valueOrCollection | valueOrCollection isCollection ifFalse: [values add: valueOrCollection] ifTrue: [values addAll: valueOrCollection]]].

		eachProcInstance getExecutedScriptsReversed do: [:each | (each getValueOfFormField: fieldName) ifNotNil: [:value | values add: value]].

		(externalVariables includesKey: fieldName) ifTrue: [values add: (self valueAtExternalVariable: fieldName)].
	].

	^values

	"#reverse is used because the process can be recursive (can be more than one field value for a given field name) --> we check for the lastest executed transitions"