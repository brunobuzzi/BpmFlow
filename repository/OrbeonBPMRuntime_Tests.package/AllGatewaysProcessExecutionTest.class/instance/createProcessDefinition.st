other
createProcessDefinition
	| xpdlReader processGenerator |

	xpdlReader := (self getXpdlReaderClass forProcessNamed: 'all gateways' withString: XPDLProcessDefinitionTemplate processDefinition_all_gateways)
			connectProcesses;
			yourself.

	processGenerator := BpmProcessGenerator on: xpdlReader xpdlPackages.
	processGenerator mapProcess: 'all gateways' toApplication: (self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: 'ue');
		generateAllProcess.

	processGenerator processes do: [:each | each addToCache].

	^processGenerator getProcessDefinitionNamed: 'all gateways' ifNone: [self assert: false].