execution
getFinishedAssignmentFor: aBpmTaskInstance on: aBpmProcessInstance
	"The receiver get the assignment for <aBpmTaskInstance> in the process <aBpmProcessInstance>. 
	1- Get the matrix (BpmTasksHolderMatrix) based on the application that the process <aBpmProcessInstance> belong.
	2- Get the assignment for the roles of the task <aBpmTaskInstance>"

	^aBpmProcessInstance getFinishedProcessMatrix 
			getAssignmentFor: aBpmTaskInstance 
			ifNone: [PEFImproperStateException signal: 'Assignment not found in Finished Matrix']