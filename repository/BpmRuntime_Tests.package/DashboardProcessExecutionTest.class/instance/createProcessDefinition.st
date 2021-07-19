other
createProcessDefinition
	| xpdlReader processGenerator |

	xpdlReader := (self defaultXpdlReaderClass forProcessNamed: 'dashboard-process' withString: XPDLProcessDefinitionTemplate xpdlDefinition_dashboard_process)
			connectProcesses;
			yourself.

	processGenerator := BpmProcessGenerator on: xpdlReader xpdlPackages root: testRoot.
	processGenerator mapProcess: 'dashboard-process' toApplication: (self getOrbeonApplicationClass getExistingBpmApplicationOrCreateNewNamed: 'ue');
		generateAllProcess.

	processGenerator processesDo: [:each | each addToCache].

	^processGenerator getProcessDefinitionNamed: 'dashboard-process' ifNone: [self assert: false].