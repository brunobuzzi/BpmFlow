other
createProcessDefinition
	| xpdlReader processGenerator |

	xpdlReader := (self defaultXpdlReaderClass forProcessNamed: 'timer-process-start-simple' withString: XPDLProcessDefinitionTemplate xpdlDefinition_Timer_Process_Start_Simple)
			connectProcesses;
			yourself.

	processGenerator := BpmProcessGenerator on: xpdlReader xpdlPackages root: testRoot.
	processGenerator mapProcess: 'timer-process-start-simple' toApplication: (self getOrbeonApplicationClass getExistingBpmApplicationOrCreateNewNamed: 'ue');
		generateAllProcess.

	processGenerator processesDo: [:each | each addToCache].

	^processGenerator getProcessDefinitionNamed: 'timer-process-start-simple' ifNone: [self assert: false].