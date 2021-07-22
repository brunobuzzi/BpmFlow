other
createProcessDefinition
	| xpdlReader processGenerator |

	xpdlReader := (self defaultXpdlReaderClass forProcessNamed: 'default-transition-process' withString: XPDLProcessDefinitionTemplate xpdlDefinition_default_transition)
			connectProcesses;
			yourself.

	processGenerator := BpmProcessGenerator on: xpdlReader xpdlPackages root: testRoot.
	processGenerator mapProcess: 'default-transition-process' toApplication: (testRoot getExistingBpmApplicationOrCreateNewNamed: 'ue' in: 'env-ue');
		generateAllProcess.

	processGenerator processesDo: [:each | each addToCache].

	^processGenerator getProcessDefinitionNamed: 'default-transition-process' ifNone: [self assert: false].