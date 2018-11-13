other
createProcessesDefinition
	| xpdlReader processGenerator |

	xpdlReader := (self getXpdlReaderClass forProcessNamed: 'Event Based Gateway' withString: XPDLProcessDefinitionTemplate processDefinition_event_based_gateway_03)
			connectProcesses;
			yourself.

	processGenerator := BpmProcessGenerator on: xpdlReader xpdlPackages.
	processGenerator 
		mapProcess: 'House Loan 3' toApplication: (self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: 'ue');
		mapProcess: 'House Purchase with Loan 3' toApplication: (self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: 'ue');
		generateAllProcess.

	processGenerator processes do: [:each | each addToCache].

	senderProcessDef := processGenerator getProcessDefinitionNamed: 'House Loan' ifNone: [self assert: false].
	receiverProcesDef := processGenerator getProcessDefinitionNamed: 'House Purchase with Loan' ifNone: [self assert: false].