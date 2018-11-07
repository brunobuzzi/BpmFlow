execution
getAssignmentFor: aBpmTaskInstance on: aBpmProcessInstance ifNone: aBlock
	"The receiver get the assignment for <aBpmTaskInstance> in the process <aBpmProcessInstance>. 
	1- Get the matrix (BpmTasksHolderMatrix) based on the application that the process <aBpmProcessInstance> belong.
	2- Get the assignment for the roles of the task <aBpmTaskInstance>"

	^aBpmProcessInstance getAvailableProcessMatrix getAssignmentFor: aBpmTaskInstance ifNone: aBlock