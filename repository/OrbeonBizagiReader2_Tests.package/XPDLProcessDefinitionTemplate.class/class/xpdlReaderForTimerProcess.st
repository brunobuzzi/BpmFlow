timer process
xpdlReaderForTimerProcess

	^(XPDLReader2 forProcessNamed: 'timer-process' withString: self xpdlDefinition_Timer_Process)
			connectProcesses;
			yourself