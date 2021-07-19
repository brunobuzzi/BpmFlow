other
createProcessDefinition
	| xpdlReader processGenerator |

	xpdlReader := (self defaultXpdlReaderClass forProcessNamed: 'multi-role-with-multi-instance' withString: XPDLProcessDefinitionTemplate xpdlDefinition_dataEntry_performers_with_multiinstance)
			connectProcesses;
			yourself.

	processGenerator := BpmProcessGenerator on: xpdlReader xpdlPackages root: testRoot.
	processGenerator mapProcess: 'multi-role-with-multi-instance' toApplication: (self getOrbeonApplicationClass getExistingBpmApplicationOrCreateNewNamed: 'ue');
		generateAllProcess.

	processGenerator processesDo: [:each | each addToCache].

	^processGenerator getProcessDefinitionNamed: 'multi-role-with-multi-instance' ifNone: [self assert: false].