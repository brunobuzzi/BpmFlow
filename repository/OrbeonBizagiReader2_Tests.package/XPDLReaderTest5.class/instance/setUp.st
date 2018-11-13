other
setUp

	reader:= (self getXpdlReaderClass forProcessNamed: 'ReusableEmbeddedProc' withString: XPDLProcessDefinitionTemplate processDefinition_Reusable_Embedded_Proc)
			addXPDLDocument: (XMLDOMParser parse: XPDLProcessDefinitionTemplate processDefinition_Reusable_Sub_Proc) namedAs: 'Reusable-Script';
			connectProcesses;
			yourself.