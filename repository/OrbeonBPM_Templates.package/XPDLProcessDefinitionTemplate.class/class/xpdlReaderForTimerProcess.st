timer process
xpdlReaderForTimerProcess

	^(self getXpdlReaderClass forProcessNamed: 'timer-process' withString: self xpdlDefinition_Timer_Process)
			connectProcesses;
			yourself