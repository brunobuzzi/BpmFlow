timer process
xpdlReaderForTimerProcessStart

	^(self getXpdlReaderClass forProcessNamed: 'timer-process-start' withString: self xpdlDefinition_Timer_Process_Start)
			connectProcesses;
			yourself