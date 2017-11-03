timer task 2
xpdlReaderForTimerTask_2

	^(XPDLReader2 forProcessNamed: 'timer_task_2' withString: self xpdlDefinition_Timer_Task_2)
			connectProcesses;
			yourself