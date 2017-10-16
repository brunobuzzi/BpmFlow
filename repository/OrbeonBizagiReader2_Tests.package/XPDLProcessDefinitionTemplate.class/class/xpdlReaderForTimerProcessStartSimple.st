timer process
xpdlReaderForTimerProcessStartSimple

	^(XPDLReader2 forProcessNamed: 'timer-process-start-simple' withString: self xpdlDefinition_Timer_Process_Start_Simple)
			connectProcesses;
			yourself