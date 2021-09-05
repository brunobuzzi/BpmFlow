other
setUp

	super setUp.

	reader := (testRoot newXpdlReaderForProcessNamed: 'ReusableEmbeddedProc' withXpdlString: XPDLProcessDefinitionTemplate xpdlDefinition_Reusable_Embedded_Proc)
			addXPDLDocument: (XMLDOMParser parse: XPDLProcessDefinitionTemplate xpdlDefinition_Reusable_Sub_Proc) namedAs: 'reusable-sub-proc';
			connectProcesses;
			yourself.