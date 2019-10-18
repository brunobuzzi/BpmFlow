other
setUp
	| xpdlReader |

	super setUp.

	xpdlReader := (self defaultXpdlReaderClass forProcessNamed: 'multi-role' withString: XPDLProcessDefinitionTemplate xpdlExample_data_entry)
			connectProcesses;
			yourself.

	processGenerator := BpmProcessGenerator on: xpdlReader xpdlPackages.
	processGenerator mapProcess: 'multi-role' toApplication: (self defaultApplicationManagerClass getExistingApplicationOrCreateNewNamed: self defaultApplicationName);
		generateAllProcess.