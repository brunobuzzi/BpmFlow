timer process
xpdlReaderForTimerProcess

	^(XPDLReader2 for: 'timer-process' withString: self xpdlDefinition_Timer_Process)
			connectProcesses;
			yourself