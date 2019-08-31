execution query
getValueOfProcessField: fieldName
	"Answer the first value of a field named <fieldName> in the receiver's collection of <executedActivities>.
	The search is performed only in activities that have anOrbeonFormInstance <hasForm>.
	If the field <fieldName> is a repeatable field then answer <aCollection> with all values"

	self getProcessesTreeAsCollection do: [:eachProcInstance |  
	
		(eachProcInstance getAllActivitiesReversed select: [:each | each hasForm]) do: [:each | (each getValueOfFormField: fieldName) ifNotNil: [:value | ^value]].

		eachProcInstance getExecutedScriptsReversed do: [:each | (each getValueOfFormField: fieldName) ifNotNil: [:value | ^value]].

		(externalVariables includesKey: fieldName) ifTrue: [^self valueAtExternalVariable: fieldName].
	].

	^nil

	"#reverse is used because the process can be recursive (can be more than one field value for a given field name) --> we check for the lastest executed transitions"