other
createProcessesDefinition
	| xpdlReader processGenerator |

	xpdlReader := (self defaultXpdlReaderClass forProcessNamed: 'Event Based Gateway' withString: XPDLProcessDefinitionTemplate xpdlDefinition_event_based_gateway_02)
			connectProcesses;
			yourself.

	processGenerator := BpmProcessGenerator on: xpdlReader xpdlPackages root: testRoot.
	processGenerator 
		mapProcess: 'House Loan 2' toApplication: (testRoot getExistingBpmApplicationOrCreateNewNamed: 'ue' in: 'env-ue');
		mapProcess: 'House Purchase with Loan 2' toApplication: (testRoot getExistingBpmApplicationOrCreateNewNamed: 'ue' in: 'env-ue');
		generateAllProcess.

	processGenerator processesDo: [:each | each addToCache].

	senderProcessDef := processGenerator getProcessDefinitionNamed: 'House Loan 2' ifNone: [self assert: false].
	receiverProcesDef := processGenerator getProcessDefinitionNamed: 'House Purchase with Loan 2' ifNone: [self assert: false].