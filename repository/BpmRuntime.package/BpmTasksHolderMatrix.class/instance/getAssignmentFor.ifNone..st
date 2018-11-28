other
getAssignmentFor: aBpmTaskInstance ifNone: aBlock
	"Answer the associated task assignment <aBpmTaskAssignment> to the task <aBpmTaskInstance>.
	If the task assignment is not found the evaluate the zero argument block <aBlock>"
	| responsible |

	responsible := aBpmTaskInstance hasPerformers
		ifTrue: [aBpmTaskInstance getPerformers] "check in performers for the <BpmTaskAssignment> of task <BpmTaskInstance>"
		ifFalse: [aBpmTaskInstance getRoles]. "check in roles for the <BpmTaskAssignment> of task <BpmTaskInstance>"
	
	responsible do: [:eachRole | 
		(self getAvailableTasksFor: eachRole name) do: [:assignTask | (assignTask task == aBpmTaskInstance) ifTrue: [^assignTask]]].

	^aBlock value