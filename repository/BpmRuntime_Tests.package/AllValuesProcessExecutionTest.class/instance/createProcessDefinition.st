other
createProcessDefinition
	| xpdlReader processGenerator |

	xpdlReader := (self defaultXpdlReaderClass forProcessNamed: 'all values' withString: XPDLProcessDefinitionTemplate xpdlDefinition_all_values)
			connectProcesses;
			yourself.

	processGenerator := BpmProcessGenerator on: xpdlReader xpdlPackages root: testRoot.
	processGenerator mapProcess: 'all values' toApplication: (self getOrbeonApplicationClass getExistingBpmApplicationOrCreateNewNamed: 'ue');
		generateAllProcess.

	processGenerator processesDo: [:each | each addToCache].

	^processGenerator getProcessDefinitionNamed: 'all values' ifNone: [self assert: false].