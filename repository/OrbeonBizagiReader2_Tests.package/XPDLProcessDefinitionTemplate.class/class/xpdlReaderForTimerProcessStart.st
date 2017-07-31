timer process
xpdlReaderForTimerProcessStart

	^(XPDLReader2 for: 'timer-process-start' withString: self xpdlDefinition_Timer_Process_Start)
			connectProcesses;
			yourself