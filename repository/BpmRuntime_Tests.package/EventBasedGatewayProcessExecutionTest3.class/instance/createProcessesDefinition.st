other
createProcessesDefinition
"	| xpdlReader processGenerator |

	xpdlReader := (self defaultXpdlReaderClass forProcessNamed: 'Event Based Gateway' withString: XPDLProcessDefinitionTemplate xpdlDefinition_event_based_gateway_03)
			connectProcesses;
			yourself.

	processGenerator := BpmProcessGenerator on: xpdlReader xpdlPackages root: testRoot.
	processGenerator 
		mapProcess: 'House Loan 3' toApplication: (testRoot getExistingBpmApplicationOrCreateNewNamed: 'ue' in: 'env-ue');
		mapProcess: 'House Purchase with Loan 3' toApplication: (testRoot getExistingBpmApplicationOrCreateNewNamed: 'ue' in: 'env-ue');
		generateAllProcess.

	processGenerator processesDo: [:each | each addToCache].

	senderProcessDef := processGenerator getProcessDefinitionNamed: 'House Loan 3' ifNone: [self assert: false].
	receiverProcesDef := processGenerator getProcessDefinitionNamed: 'House Purchase with Loan 3' ifNone: [self assert: false]."


	testRoot newBpmProcessesDefinitionNamed: #('House Loan 3' 'House Purchase with Loan 3') 
			withXpdlStrings: (Array with: XPDLProcessDefinitionTemplate xpdlDefinition_event_based_gateway_03) 
			multiplePools: true
			inEnvironmentNamed: #('env-ue' 'env-ue') 
			inApplicationNamed: #('ue' 'ue').

	senderProcessDef := testRoot getLatestProcessDefinitionNamed: 'House Loan 3' in: 'ue'.
	receiverProcesDef := testRoot getLatestProcessDefinitionNamed: 'House Purchase with Loan 3' in: 'ue'.