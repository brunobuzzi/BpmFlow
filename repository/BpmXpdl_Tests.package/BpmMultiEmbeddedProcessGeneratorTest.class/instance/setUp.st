other
setUp

	super setUp.

	testRoot 
		newBpmProcessDefinitionNamed: 'multi-embedded'
		withXpdlString: XPDLProcessDefinitionTemplate xpdlDefinition_Embedded_Embedded_Proc
		inEnvironmentNamed: self defaultEnvironmentName
		inApplicationNamed: self defaultApplicationName.