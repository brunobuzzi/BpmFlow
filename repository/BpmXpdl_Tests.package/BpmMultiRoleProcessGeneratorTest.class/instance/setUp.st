other
setUp
	| xpdlReader |

	super setUp.

	xpdlReader := (self defaultXpdlReaderClass forProcessNamed: 'multi-role' withString: XPDLProcessDefinitionTemplate xpdlDefinition_data_entry)
			connectProcesses;
			yourself.

	processGenerator := BpmProcessGenerator on: xpdlReader xpdlPackages root: testRoot.
	processGenerator mapProcess: 'multi-role' toApplication: (testRoot getExistingBpmApplicationOrCreateNewNamed: self defaultApplicationName);
		generateAllProcess.