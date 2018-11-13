other
createProcessDefinition
	| xpdlReader processGenerator |

	xpdlReader := (self getXpdlReaderClass forProcessNamed: 'VisaAppliance' withString: XPDLProcessDefinitionTemplate processDefinition_visa_apply)
			addXPDLDocument: (XMLDOMParser parse: XPDLProcessDefinitionTemplate processDefinition_home_office_check) namedAs: 'Home-Office';
			addXPDLDocument:  (XMLDOMParser parse: XPDLProcessDefinitionTemplate processDefinition_check_financial_data) namedAs: 'Check-Financial-Data';
			connectProcesses;
			yourself.

	processGenerator := BpmProcessGenerator on: xpdlReader xpdlPackages.
	processGenerator mapProcess: 'visa-appliance' toApplication: (self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: 'ue');
		mapProcess: 'home-office-check' toApplication: (self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: 'ue');
		mapProcess: 'check-financial-data' toApplication: (self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: 'ue');
		generateAllProcess.

	processGenerator processes do: [:each | each addToCache].

	^processGenerator getProcessDefinitionNamed: 'visa-appliance' ifNone: [self assert: false].