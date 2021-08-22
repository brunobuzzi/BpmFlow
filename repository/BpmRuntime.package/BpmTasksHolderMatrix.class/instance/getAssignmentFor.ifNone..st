other
getAssignmentFor: aBpmTaskInstance ifNone: aBlock
	"Answer the associated task assignment <aBpmTaskAssignment> to the task <aBpmTaskInstance>.
	If the task assignment is not found the evaluate the zero argument block <aBlock>"

	aBpmTaskInstance responsiblesDo: [:eachRole | 
		(self getAvailableTasksFor: eachRole name) 
			do: [:assignTask | (assignTask task == aBpmTaskInstance) ifTrue: [^assignTask]]].

	^aBlock value