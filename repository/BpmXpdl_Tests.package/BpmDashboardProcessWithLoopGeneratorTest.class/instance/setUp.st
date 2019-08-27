other
setUp
	| reader |

	super setUp.

	reader:= (self defaultXpdlReaderClass forProcessNamed: 'dashboard-process-with-loop' withString: XPDLProcessDefinitionTemplate xpdlExample_dashboard_with_loop)
			connectProcesses;
			yourself.

	processGenerator := BpmProcessGenerator on: reader xpdlPackages.

	processGenerator 
		mapProcess: 'dashboard-process-with-loop' toApplication: (self defaultApplicationManagerClass getAnyApplicationNamed: 'ue');
		generateAllProcess.

	^processGenerator