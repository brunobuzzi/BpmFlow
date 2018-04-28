other
setUp
	| xpdlReader |

	super setUp.

	xpdlReader := XPDLProcessDefinitionTemplate xpdlReaderForDataEntryProcess. 

	processGenerator := BpmProcessGenerator on: xpdlReader xpdlPackages.
	processGenerator mapProcess: 'multi-role' toApplication: (self getApplicationManagerClass getAnyApplicationNamed: 'ue');
		generateAllProcess.