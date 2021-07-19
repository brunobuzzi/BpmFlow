other
createProcessDefinition
	| xpdlReader processGenerator |

	xpdlReader := (self defaultXpdlReaderClass forProcessNamed: 'recursive-data' withString: XPDLProcessDefinitionTemplate xpdlDefinition_Enter_Recursive_Data)
			connectProcesses;
			yourself.

	processGenerator := BpmProcessGenerator on: xpdlReader xpdlPackages root: testRoot.
	processGenerator mapProcess: 'recursive-data' toApplication: (self getOrbeonApplicationClass getExistingBpmApplicationOrCreateNewNamed: 'ue');
		generateAllProcess.

	processGenerator processesDo: [:each | each addToCache].

	^processGenerator getProcessDefinitionNamed: 'recursive-data' ifNone: [self assert: false].