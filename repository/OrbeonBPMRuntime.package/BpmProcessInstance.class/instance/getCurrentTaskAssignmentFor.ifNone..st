other
getCurrentTaskAssignmentFor: aBpmTaskInstance ifNone: aBlock
	"The receiver answer the assignment <BpmTaskAssignment> associate with the task <aBpmTaskInstance>"

	^self userAssignments detect: [:each | each task == aBpmTaskInstance] ifNone: aBlock