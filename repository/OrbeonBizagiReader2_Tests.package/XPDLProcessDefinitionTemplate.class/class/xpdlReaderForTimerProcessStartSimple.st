timer process
xpdlReaderForTimerProcessStartSimple

	^(XPDLReader2 for: 'timer-process-start-simple' withString: self xpdlDefinition_Timer_Process_Start_Simple)
			connectProcesses;
			yourself