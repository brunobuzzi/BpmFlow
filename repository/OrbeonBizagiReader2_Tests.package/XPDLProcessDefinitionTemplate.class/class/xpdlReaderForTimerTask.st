timer task
xpdlReaderForTimerTask

	^(XPDLReader2 forProcessNamed: 'timer_task' withString: self xpdlDefinition_Timer_Task)
			connectProcesses;
			yourself