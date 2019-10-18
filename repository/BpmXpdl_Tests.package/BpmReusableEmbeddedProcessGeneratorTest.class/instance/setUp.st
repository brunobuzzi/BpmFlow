other
setUp
	| reader |

	super setUp.

	reader:= (self defaultXpdlReaderClass forProcessNamed: 'ReusableEmbeddedProc' withString: XPDLProcessDefinitionTemplate xpdlExample_Reusable_Embedded_Proc)
			addXPDLDocument: (XMLDOMParser parse: XPDLProcessDefinitionTemplate xpdlExample_Reusable_Sub_Proc) namedAs: 'reusable-sub-proc';
			connectProcesses;
			yourself.

	processGenerator := BpmProcessGenerator on: reader xpdlPackages.

	processGenerator 
		mapProcess: 'ReusableEmbeddedProc' toApplication: (self defaultApplicationManagerClass getExistingApplicationOrCreateNewNamed: self defaultApplicationName);
		mapProcess: 'reusable-sub-proc' toApplication: (self defaultApplicationManagerClass getExistingApplicationOrCreateNewNamed: self defaultApplicationName);
		mapProcess: 'reusable-sub-proc' toApplication: (self defaultApplicationManagerClass getExistingApplicationOrCreateNewNamed: self defaultApplicationName);
		generateAllProcess.

	^processGenerator