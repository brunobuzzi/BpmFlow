other
createProcessDefinition
	| xpdlReader processGenerator |

	xpdlReader := (self getXpdlReaderClass forProcessNamed: 'Process with Scripts' withString: XPDLProcessDefinitionTemplate xpdlExample_process_with_script)
			connectProcesses;
			yourself.

	processGenerator := BpmProcessGenerator on: xpdlReader xpdlPackages.
	processGenerator mapProcess: 'Process with Scripts' toApplication: (self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: 'ue');
		generateAllProcess.

	processGenerator processes do: [:each | each addToCache].

	^processGenerator getProcessDefinitionNamed: 'Process with Scripts' ifNone: [self assert: false].