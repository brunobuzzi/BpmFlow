timer process
xpdlReaderForTimerProcessStart

	^(XPDLReader2 forProcessNamed: 'timer-process-start' withString: self xpdlDefinition_Timer_Process_Start)
			connectProcesses;
			yourself