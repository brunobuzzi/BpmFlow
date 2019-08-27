other
setUp
	| xpdlReader |

	super setUp.

	xpdlReader := (self defaultXpdlReaderClass forProcessNamed: 'timer-process-start' withString: XPDLProcessDefinitionTemplate xpdlDefinition_Timer_Process_Start)
			connectProcesses;
			yourself.

	processGenerator := BpmProcessGenerator on: xpdlReader xpdlPackages.
	processGenerator mapProcess: 'timer-process-start' toApplication: (self defaultApplicationManagerClass getAnyApplicationNamed: 'ue');
		generateAllProcess.