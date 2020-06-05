other
setUp
	| reader |

	super setUp.

	reader:= (self defaultXpdlReaderClass forProcessNamed: 'dashboard-process-with-loop' withString: XPDLProcessDefinitionTemplate xpdlDefinition_dashboard_with_loop)
			connectProcesses;
			yourself.

	processGenerator := BpmProcessGenerator on: reader xpdlPackages.

	processGenerator 
		mapProcess: 'dashboard-process-with-loop' toApplication: (self defaultApplicationManagerClass getExistingBpmApplicationOrCreateNewNamed: self defaultApplicationName);
		generateAllProcess.

	^processGenerator