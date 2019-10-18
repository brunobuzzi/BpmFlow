other
setUp
	| reader |

	super setUp.

	reader := (self defaultXpdlReaderClass forProcessNamed: 'TestCase' withString: XPDLProcessDefinitionTemplate xpdlExample_ProcessTestCase)
				addXPDLDocument: (XMLDOMParser parse: XPDLProcessDefinitionTemplate xpdlExample_ProcessFixIssue) namedAs: 'FixIssue';
				addXPDLDocument: (XMLDOMParser parse: XPDLProcessDefinitionTemplate xpdlExample_ProcessReportToArchitect) namedAs: 'ReportToArchitect';
				connectProcesses;
				yourself.

	processGenerator := BpmProcessGenerator on: reader xpdlPackages.

	processGenerator 
		mapProcess: 'test-case-process' toApplication: (self defaultApplicationManagerClass getExistingApplicationOrCreateNewNamed: self defaultApplicationName);
		mapProcess: 'fix-issue' toApplication: (self defaultApplicationManagerClass getExistingApplicationOrCreateNewNamed: self defaultApplicationName);
		mapProcess: 'architect-process' toApplication: (self defaultApplicationManagerClass getExistingApplicationOrCreateNewNamed: self defaultApplicationName);
		generateAllProcess.

	^processGenerator