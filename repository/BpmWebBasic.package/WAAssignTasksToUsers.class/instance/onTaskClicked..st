tasks
onTaskClicked: aBpmTaskInstance

	selectedTask := selectedTask 
			ifNil:[aBpmTaskInstance] 
			ifNotNil: [(selectedTask == aBpmTaskInstance) 
							ifTrue: [nil]  
							ifFalse: [aBpmTaskInstance]].

	usersBatchedList clearOrderMode.
	usersBatchedList searchApplied: false.