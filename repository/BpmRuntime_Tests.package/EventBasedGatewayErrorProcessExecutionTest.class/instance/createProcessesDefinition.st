other
createProcessesDefinition
	| xpdlReader processGenerator |

	xpdlReader := (self defaultXpdlReaderClass forProcessNamed: 'Event Based Gateway' withString: XPDLProcessDefinitionTemplate xpdlDefinition_event_based_gateway_error)
			connectProcesses;
			yourself.

	processGenerator := BpmProcessGenerator on: xpdlReader xpdlPackages root: testRoot.
	processGenerator 
		mapProcess: 'House Purchase with Send Error' toApplication: (testRoot getExistingBpmApplicationOrCreateNewNamed: 'ue' in: 'env-ue');
		mapProcess: 'House Purchase with Loan' toApplication: (testRoot getExistingBpmApplicationOrCreateNewNamed: 'ue' in: 'env-ue');
		generateAllProcess.

	processGenerator processesDo: [:each | each addToCache].

	senderProcessDef := processGenerator getProcessDefinitionNamed: 'House Purchase with Send Error' ifNone: [self assert: false].
	receiverProcesDef := processGenerator getProcessDefinitionNamed: 'House Purchase with Loan' ifNone: [self assert: false].