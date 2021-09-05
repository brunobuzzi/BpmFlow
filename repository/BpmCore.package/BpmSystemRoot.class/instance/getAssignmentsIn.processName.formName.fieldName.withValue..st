bpm processes
getAssignmentsIn: appName processName: processNamed formName: formNamed fieldName: fieldNamed withValue: fieldValue
	"The receiver answer a collection of <OrbeonProcessAssignment> in application named <appName>  for process type <processNamed> where the field named <fieldNamed> is equal to <fieldValue>"
	| procDefinition assignments |

	procDefinition := self getAllProcessesNamed: processNamed in: appName.
	procDefinition ifEmpty: [^#()].

	assignments := OrderedCollection new.
	"procDefinition := procDefinition last.
	^procDefinition getFieldsNamed: fieldNamed  in: formNamed withValue: fieldValue"

	procDefinition do: [:eachProcDef | 
		assignments addAll: (eachProcDef getAssignmentFromFieldsNamed: fieldNamed  in: formNamed withValue: fieldValue)].

	^assignments