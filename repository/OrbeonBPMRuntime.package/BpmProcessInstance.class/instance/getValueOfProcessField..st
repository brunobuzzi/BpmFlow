execution
getValueOfProcessField: fieldName
	"Answer the first value of a field named <fieldName> in the receiver's collection of <executedActivities>.
	The search is performed only in activities that have anOrbeonFormInstance <hasForm>."
	| treeCollection |

	(executedActivities reverse select: [:each | each hasForm]) 
		do: [:each | (each getValueOfFormField: fieldName) ifNotNil: [:value | ^value]].

	executedScripts reverse do: [:each | (each getValueOfFormField: fieldName) ifNotNil: [:value | ^value]].

	"searching the value in sub and parent processes"
	treeCollection := self getProcessesTreeAsCollection remove: self; yourself. "to avoid stack overflow"

	^(treeCollection detect: [:proc | (proc getValueOfProcessField: fieldName) notNil] ifNone: [nil])
		ifNil: [nil] 
		ifNotNil: [:proc | proc getValueOfProcessField: fieldName]

	"#reverse is used because the process can be recursive (can be more than one field value for a given field name) --> we check for the lastest executed transitions"