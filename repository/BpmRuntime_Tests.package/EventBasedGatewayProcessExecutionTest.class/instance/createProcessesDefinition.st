other
createProcessesDefinition
"	| xpdlReader processGenerator |

	xpdlReader := (self defaultXpdlReaderClass forProcessNamed: 'Event Based Gateway' withString: XPDLProcessDefinitionTemplate xpdlDefinition_event_based_gateway_01)
			connectProcesses;
			yourself.

	processGenerator := BpmProcessGenerator on: xpdlReader xpdlPackages root: testRoot.
	processGenerator 
		mapProcess: 'House Loan' toApplication: (testRoot getExistingBpmApplicationOrCreateNewNamed: 'ue' in: 'env-ue');
		mapProcess: 'House Purchase with Loan' toApplication: (testRoot getExistingBpmApplicationOrCreateNewNamed: 'ue' in: 'env-ue');
		generateAllProcess.

	processGenerator processesDo: [:each | each addToCache].

	senderProcessDef := processGenerator getProcessDefinitionNamed: 'House Loan' ifNone: [self assert: false].
	receiverProcesDef := processGenerator getProcessDefinitionNamed: 'House Purchase with Loan' ifNone: [self assert: false]."


	testRoot newBpmProcessesDefinitionNamed: #('House Loan' 'House Purchase with Loan') 
			withXpdlStrings: (Array with: XPDLProcessDefinitionTemplate xpdlDefinition_event_based_gateway_01) 
			multiplePools: true
			inEnvironmentNamed: #('env-ue' 'env-ue') 
			inApplicationNamed: #('ue' 'ue').

	senderProcessDef := testRoot getLatestProcessDefinitionNamed: 'House Loan' in: 'ue'.
	receiverProcesDef := testRoot getLatestProcessDefinitionNamed: 'House Purchase with Loan' in: 'ue'.