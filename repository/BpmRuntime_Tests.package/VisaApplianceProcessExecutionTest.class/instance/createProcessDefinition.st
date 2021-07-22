other
createProcessDefinition
	| xpdlReader processGenerator |

	xpdlReader := (self defaultXpdlReaderClass forProcessNamed: 'VisaAppliance' withString: XPDLProcessDefinitionTemplate xpdlDefinition_visa_apply)
			addXPDLDocument: (XMLDOMParser parse: XPDLProcessDefinitionTemplate xpdlDefinition_home_office_check) namedAs: 'Home-Office';
			addXPDLDocument:  (XMLDOMParser parse: XPDLProcessDefinitionTemplate xpdlDefinition_check_financial_data) namedAs: 'Check-Financial-Data';
			connectProcesses;
			yourself.

	processGenerator := BpmProcessGenerator on: xpdlReader xpdlPackages root: testRoot.
	processGenerator mapProcess: 'visa-appliance' toApplication: (testRoot getExistingBpmApplicationOrCreateNewNamed: 'ue' in: 'env-ue');
		mapProcess: 'home-office-check' toApplication: (testRoot getExistingBpmApplicationOrCreateNewNamed: 'ue' in: 'env-ue');
		mapProcess: 'check-financial-data' toApplication: (testRoot getExistingBpmApplicationOrCreateNewNamed: 'ue' in: 'env-ue');
		generateAllProcess.

	processGenerator processesDo: [:each | each addToCache].

	^processGenerator getProcessDefinitionNamed: 'visa-appliance' ifNone: [self assert: false].