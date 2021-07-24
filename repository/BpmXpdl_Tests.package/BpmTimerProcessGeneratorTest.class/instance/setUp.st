other
setUp
	| xpdlReader |

	super setUp.

	xpdlReader := (self defaultXpdlReaderClass forProcessNamed: 'timer-process' withString: XPDLProcessDefinitionTemplate xpdlDefinition_Timer_Process)
			connectProcesses;
			yourself.

	processGenerator := BpmProcessGenerator on: xpdlReader xpdlPackages root: testRoot.
	processGenerator mapProcess: 'timer-process' toApplication: (testRoot getExistingBpmApplicationOrCreateNewNamed: self defaultApplicationName);
		generateAllProcess.