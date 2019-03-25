other
setUp
	| xpdlReader |

	super setUp.

	xpdlReader := (self getXpdlReaderClass forProcessNamed: 'timer-process' withString: XPDLProcessDefinitionTemplate xpdlDefinition_Timer_Process)
			connectProcesses;
			yourself.

	processGenerator := BpmProcessGenerator on: xpdlReader xpdlPackages.
	processGenerator mapProcess: 'timer-process' toApplication: (self defaultApplicationManagerClass getAnyApplicationNamed: 'ue');
		generateAllProcess.