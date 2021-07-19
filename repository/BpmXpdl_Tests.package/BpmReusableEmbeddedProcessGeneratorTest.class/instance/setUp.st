other
setUp
	| reader |

	super setUp.

	reader:= (self defaultXpdlReaderClass forProcessNamed: 'ReusableEmbeddedProc' withString: XPDLProcessDefinitionTemplate xpdlDefinition_Reusable_Embedded_Proc)
			addXPDLDocument: (XMLDOMParser parse: XPDLProcessDefinitionTemplate xpdlDefinition_Reusable_Sub_Proc) namedAs: 'reusable-sub-proc';
			connectProcesses;
			yourself.

	processGenerator := BpmProcessGenerator on: reader xpdlPackages root: testRoot.

	processGenerator 
		mapProcess: 'ReusableEmbeddedProc' toApplication: (self defaultApplicationManagerClass getExistingBpmApplicationOrCreateNewNamed: self defaultApplicationName);
		mapProcess: 'reusable-sub-proc' toApplication: (self defaultApplicationManagerClass getExistingBpmApplicationOrCreateNewNamed: self defaultApplicationName);
		mapProcess: 'reusable-sub-proc' toApplication: (self defaultApplicationManagerClass getExistingBpmApplicationOrCreateNewNamed: self defaultApplicationName);
		generateAllProcess.

	^processGenerator