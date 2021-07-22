other
createProcessDefinition
	| xpdlReader processGenerator |

	xpdlReader := (self defaultXpdlReaderClass forProcessNamed: 'multi-role-with-loop' withString: XPDLProcessDefinitionTemplate xpdlDefinition_dataEntry_performers_with_loop)
			connectProcesses;
			yourself.

	processGenerator := BpmProcessGenerator on: xpdlReader xpdlPackages root: testRoot.
	processGenerator mapProcess: 'multi-role-with-loop' toApplication: (testRoot getExistingBpmApplicationOrCreateNewNamed: 'ue' in: 'env-ue');
		generateAllProcess.

	processGenerator processesDo: [:each | each addToCache].

	^processGenerator getProcessDefinitionNamed: 'multi-role-with-loop' ifNone: [self assert: false].