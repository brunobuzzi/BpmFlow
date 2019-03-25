other
setUp
	| reader |

	super setUp.

	reader:= (self getXpdlReaderClass forProcessNamed: 'ReusableEmbeddedProc' withString: XPDLProcessDefinitionTemplate xpdlExample_Reusable_Embedded_Proc)
			addXPDLDocument: (XMLDOMParser parse: XPDLProcessDefinitionTemplate xpdlExample_Reusable_Sub_Proc) namedAs: 'Reusable-Script';
			connectProcesses;
			yourself.

	processGenerator := BpmProcessGenerator on: reader xpdlPackages.

	processGenerator 
		mapProcess: 'ReusableEmbeddedProc' toApplication: (self defaultApplicationManagerClass getAnyApplicationNamed: 'ue');
		mapProcess: 'Reusable-Script' toApplication: (self defaultApplicationManagerClass getAnyApplicationNamed: 'ue');
		generateAllProcess.

	^processGenerator