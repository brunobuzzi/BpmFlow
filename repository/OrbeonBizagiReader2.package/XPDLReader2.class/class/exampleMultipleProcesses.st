other
exampleMultipleProcesses

		^(XPDLReader2 for: 'TestCase' withString: XPDLProcessDefinitionTemplate xpdlExample_ProcessTestCase)
				addXPDLDocument: (XMLDOMParser parse: XPDLProcessDefinitionTemplate xpdlExample_ProcessFixIssue) namedAs: 'FixIssue';
				addXPDLDocument: (XMLDOMParser parse: XPDLProcessDefinitionTemplate xpdlExample_ProcessReportToArchitect) namedAs: 'ReportToArchitect';
				connectProcesses;
				yourself