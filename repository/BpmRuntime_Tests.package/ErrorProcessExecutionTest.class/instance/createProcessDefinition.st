other
createProcessDefinition
	| xpdlReader processGenerator |

	xpdlReader := (self defaultXpdlReaderClass forProcessNamed: 'dashboard-error' withString: XPDLProcessDefinitionTemplate xpdlDefinition_process_error)
			connectProcesses;
			yourself.

	processGenerator := BpmProcessGenerator on: xpdlReader xpdlPackages root: testRoot.
	processGenerator mapProcess: 'dashboard-error' toApplication: (testRoot getExistingBpmApplicationOrCreateNewNamed: 'ue' in: 'env-ue');
		generateAllProcess.

	processGenerator processesDo: [:each | each addToCache].

	^processGenerator getProcessDefinitionNamed: 'dashboard-error' ifNone: [self assert: false].