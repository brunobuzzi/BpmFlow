other
setUp

	super setUp.

	testRoot 
			newBpmProcessDefinitionNamed: 'multi-role'
			withXpdlString: XPDLProcessDefinitionTemplate xpdlDefinition_data_entry
			inEnvironmentNamed: self defaultEnvironmentName
			inApplicationNamed: self defaultApplicationName.