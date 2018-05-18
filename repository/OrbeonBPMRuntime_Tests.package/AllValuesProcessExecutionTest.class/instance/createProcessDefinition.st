other
createProcessDefinition
	| xpdlReader processGenerator |

	xpdlReader := XPDLProcessDefinitionTemplate xpdlReaderForAllValues.

	processGenerator := BpmProcessGenerator on: xpdlReader xpdlPackages.
	processGenerator mapProcess: 'all values' toApplication: (self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: 'ue');
		generateAllProcess.

	processGenerator processes do: [:each | each addToCache].

	^processGenerator getProcessDefinitionNamed: 'all values' ifNone: [self assert: false].