other
setUp
	| xpdlReader |

	super setUp.

	xpdlReader := XPDLProcessDefinitionTemplate xpdlReaderForTimerProcess. 

	processGenerator := BpmProcessGenerator on: xpdlReader xpdlPackages.
	processGenerator mapProcess: 'timer-process' toApplication: (self getApplicationManagerClass getAnyApplicationNamed: 'ue');
		generateAllProcess.