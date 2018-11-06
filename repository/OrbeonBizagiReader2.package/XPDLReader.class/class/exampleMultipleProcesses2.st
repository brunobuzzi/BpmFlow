other
exampleMultipleProcesses2

		^(self getXpdlReaderClass forProcessNamed: 'TestCase' withString: XPDLProcessDefinitionTemplate xpdlExample_ProcessTestCase2)
				addXPDLDocument: (XMLDOMParser parse: XPDLProcessDefinitionTemplate xpdlExample_ProcessFixIssue) namedAs: 'FixIssue';
				addXPDLDocument: (XMLDOMParser parse: XPDLProcessDefinitionTemplate xpdlExample_ProcessReportToArchitect) namedAs: 'ReportToArchitect';
				connectProcesses;
				yourself