other
setUp
	| xpdlReader |

	super setUp.

	xpdlReader := (self getXpdlReaderClass forProcessNamed: 'multi-role' withString: XPDLProcessDefinitionTemplate processDefinition_data_entry)
			connectProcesses;
			yourself.

	processGenerator := BpmProcessGenerator on: xpdlReader xpdlPackages.
	processGenerator mapProcess: 'multi-role' toApplication: (self getApplicationManagerClass getAnyApplicationNamed: 'ue');
		generateAllProcess.