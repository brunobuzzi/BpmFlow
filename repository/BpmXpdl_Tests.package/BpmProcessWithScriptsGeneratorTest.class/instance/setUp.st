other
setUp

	super setUp.

	testRoot 
		newBpmProcessDefinitionNamed: 'Process with Scripts'
		withXpdlString: XPDLProcessDefinitionTemplate xpdlDefinition_process_with_script
		inEnvironmentNamed: self defaultEnvironmentName
		inApplicationNamed: self defaultApplicationName.