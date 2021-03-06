other
createApplianceProcessDefinition
	| xpdlReader processGenerator |

	xpdlReader := (self defaultXpdlReaderClass forProcessNamed: 'VisaAppliance' withString: XPDLProcessDefinitionTemplate xpdlExample_visa_apply)
			addXPDLDocument: (XMLDOMParser parse: XPDLProcessDefinitionTemplate xpdlExample_home_office_check) namedAs: 'Home-Office';
			addXPDLDocument:  (XMLDOMParser parse: XPDLProcessDefinitionTemplate xpdlExample_check_financial_data) namedAs: 'Check-Financial-Data';
			connectProcesses;
			yourself.

	processGenerator := BpmProcessGenerator on: xpdlReader xpdlPackages.
	processGenerator mapProcess: 'visa-appliance' toApplication: (self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: 'ue-test');
		mapProcess: 'home-office-check' toApplication: (self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: 'ue-test');
		mapProcess: 'check-financial-data' toApplication: (self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: 'ue-test');
		generateAllProcess.

	processGenerator processes do: [:each | each addToCache].

	^processGenerator getProcessDefinitionNamed: 'visa-appliance' ifNone: [self assert: false].