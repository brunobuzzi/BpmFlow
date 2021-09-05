other
setUp

	super setUp.

	reader := (testRoot newXpdlReaderForProcessNamed: 'TestCase' withXpdlString: XPDLProcessDefinitionTemplate xpdlDefinition_ProcessTestCase)
				addXPDLDocument: (XMLDOMParser parse: XPDLProcessDefinitionTemplate xpdlDefinition_ProcessFixIssue) namedAs: 'FixIssue';
				addXPDLDocument: (XMLDOMParser parse: XPDLProcessDefinitionTemplate xpdlDefinition_ProcessReportToArchitect) namedAs: 'ReportToArchitect';
				connectProcesses;
				yourself