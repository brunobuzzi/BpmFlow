other
setUp
	| reader |

	super setUp.

	reader := (self getXpdlReaderClass forProcessNamed: 'TestCase' withString: XPDLProcessDefinitionTemplate xpdlExample_ProcessTestCase)
				addXPDLDocument: (XMLDOMParser parse: XPDLProcessDefinitionTemplate xpdlExample_ProcessFixIssue) namedAs: 'FixIssue';
				addXPDLDocument: (XMLDOMParser parse: XPDLProcessDefinitionTemplate xpdlExample_ProcessReportToArchitect) namedAs: 'ReportToArchitect';
				connectProcesses;
				yourself.

	processGenerator := BpmProcessGenerator on: reader xpdlPackages.

	processGenerator 
		mapProcess: 'test-case-process' toApplication: (self defaultApplicationManagerClass getAnyApplicationNamed: 'ue');
		mapProcess: 'fix-issue' toApplication: (self defaultApplicationManagerClass getAnyApplicationNamed: 'ue');
		mapProcess: 'architect-process' toApplication: (self defaultApplicationManagerClass getAnyApplicationNamed: 'ue');
		generateAllProcess.

	^processGenerator