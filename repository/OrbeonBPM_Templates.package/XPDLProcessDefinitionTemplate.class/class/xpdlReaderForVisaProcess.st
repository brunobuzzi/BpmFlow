visa process
xpdlReaderForVisaProcess

	^(self getXpdlReaderClass forProcessNamed: 'VisaAppliance' withString: self processDefinition_visa_apply)
			addXPDLDocument: (XMLDOMParser parse: self processDefinition_home_office_check) namedAs: 'Home-Office';
			addXPDLDocument:  (XMLDOMParser parse: self processDefinition_check_financial_data) namedAs: 'Check-Financial-Data';
			connectProcesses;
			yourself