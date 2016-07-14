embedded subproc
xpdlReaderForReusableEmbeddedProcess

	^(XPDLReader2 for: 'ReusableEmbeddedProc' withString: self processDefinition_Reusable_Embedded_Proc)
			addXPDLDocument: (XMLDOMParser parse: self processDefinition_Reusable_Sub_Proc) namedAs: 'Reusable-Script';
			connectProcesses;
			yourself