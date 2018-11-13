timer task
xpdlReaderForTimerTask

	^(self getXpdlReaderClass forProcessNamed: 'timer_task' withString: self xpdlDefinition_Timer_Task)
			connectProcesses;
			yourself