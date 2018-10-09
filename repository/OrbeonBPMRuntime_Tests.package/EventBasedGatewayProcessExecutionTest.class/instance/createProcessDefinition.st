other
createProcessDefinition
	| xpdlReader processGenerator |

	xpdlReader := XPDLProcessDefinitionTemplate xpdlReaderForEventBasedGateway.

	processGenerator := BpmProcessGenerator on: xpdlReader xpdlPackages.
	processGenerator mapProcess: 'Event Based Gateway' toApplication: (self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: 'ue');
		generateAllProcess.

	processGenerator processes do: [:each | each addToCache].

	^processGenerator getProcessDefinitionNamed: 'Event Based Gateway' ifNone: [self assert: false].