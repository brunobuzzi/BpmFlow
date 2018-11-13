other
createProcessDefinition
	| xpdlReader processGenerator |

	xpdlReader := (self getXpdlReaderClass forProcessNamed: 'all-type-conditions' withString: XPDLProcessDefinitionTemplate processDefinition_all_conditions_type)
			connectProcesses;
			yourself.
	processGenerator := BpmProcessGenerator on: xpdlReader xpdlPackages.
	processGenerator mapProcess: 'all-type-conditions' toApplication: (self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: 'ue');
		generateAllProcess.

	processGenerator processes do: [:each | each addToCache].

	^processGenerator getProcessDefinitionNamed: 'all-type-conditions' ifNone: [self assert: false].