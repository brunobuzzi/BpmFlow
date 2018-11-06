other
exampleMultipleProcesses3

		^(self getXpdlReaderClass forProcessNamed: 'TestCase' withString: XPDLProcessDefinitionTemplate xpdlExample_ProcessTestCase3)
				addXPDLDocument: (XMLDOMParser parse: XPDLProcessDefinitionTemplate xpdlExample_ProcessFixIssue) namedAs: 'FixIssue';
				addXPDLDocument: (XMLDOMParser parse: XPDLProcessDefinitionTemplate xpdlExample_ProcessReportToArchitect) namedAs: 'ReportToArchitect';
				connectProcesses;
				yourself