other
setUp
	| reader |

	super setUp.

	reader := (self defaultXpdlReaderClass forProcessNamed: 'TestCase' withString: XPDLProcessDefinitionTemplate xpdlDefinition_ProcessTestCase)
				addXPDLDocument: (XMLDOMParser parse: XPDLProcessDefinitionTemplate xpdlDefinition_ProcessFixIssue) namedAs: 'FixIssue';
				addXPDLDocument: (XMLDOMParser parse: XPDLProcessDefinitionTemplate xpdlDefinition_ProcessReportToArchitect) namedAs: 'ReportToArchitect';
				connectProcesses;
				yourself.

	processGenerator := BpmProcessGenerator on: reader xpdlPackages.

	processGenerator 
		mapProcess: 'test-case-process' toApplication: (self defaultApplicationManagerClass getExistingBpmApplicationOrCreateNewNamed: self defaultApplicationName);
		mapProcess: 'fix-issue' toApplication: (self defaultApplicationManagerClass getExistingBpmApplicationOrCreateNewNamed: self defaultApplicationName);
		mapProcess: 'architect-process' toApplication: (self defaultApplicationManagerClass getExistingBpmApplicationOrCreateNewNamed: self defaultApplicationName);
		generateAllProcess.

	^processGenerator