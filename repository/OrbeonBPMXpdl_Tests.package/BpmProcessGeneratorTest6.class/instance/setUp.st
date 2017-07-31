other
setUp
	| xpdlReader |

	super setUp.

	xpdlReader := XPDLProcessDefinitionTemplate xpdlReaderForTimerProcessStart. 

	processGenerator := BpmProcessGenerator on: xpdlReader xpdlPackages.
	processGenerator mapProcess: 'timer-process-start' toApplication: (self getApplicationManagerClass getAnyApplicationNamed: 'ue');
		generateAllProcess.