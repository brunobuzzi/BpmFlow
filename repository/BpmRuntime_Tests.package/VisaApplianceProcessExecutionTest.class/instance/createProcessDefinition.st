other
createProcessDefinition

	^testRoot newBpmProcessesDefinitionNamed: #('visa-appliance' 'home-office-check' 'check-financial-data') 
			withXpdlStrings: (Array with: XPDLProcessDefinitionTemplate xpdlDefinition_visa_apply with: XPDLProcessDefinitionTemplate xpdlDefinition_home_office_check with: XPDLProcessDefinitionTemplate xpdlDefinition_check_financial_data) 
			multiplePools: false
			inEnvironmentNamed: #('env-ue' 'env-ue' 'env-ue') 
			inApplicationNamed: #('ue' 'ue' 'ue')