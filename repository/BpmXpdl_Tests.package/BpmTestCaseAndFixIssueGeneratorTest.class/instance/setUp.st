other
setUp

	super setUp.

	testRoot 
			newBpmProcessesDefinitionNamed: #('test-case-process' 'fix-issue' 'architect-process') 
			withXpdlStrings: (Array with: XPDLProcessDefinitionTemplate xpdlDefinition_ProcessTestCase with: XPDLProcessDefinitionTemplate xpdlDefinition_ProcessFixIssue with: XPDLProcessDefinitionTemplate xpdlDefinition_ProcessReportToArchitect) 
			multiplePools: false
			inEnvironmentNamed: (Array with: self defaultEnvironmentName with: self defaultEnvironmentName with: self defaultEnvironmentName)
			inApplicationNamed: (Array with: self defaultApplicationName with: self defaultApplicationName with: self defaultApplicationName)