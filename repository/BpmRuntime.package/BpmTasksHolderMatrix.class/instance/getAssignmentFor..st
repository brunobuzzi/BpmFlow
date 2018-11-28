other
getAssignmentFor: aBpmTaskInstance
	"Answer the associated task assignment <aBpmTaskAssignment> to the task <aBpmTaskInstance>.
	If the task assignment is not foud the evaluate the zero argument block <aBlock>"

	^self getAssignmentFor: aBpmTaskInstance ifNone: [nil]