embedded subproc subproc
xpdlReaderForEmbeddedEmbeddedProcess

	^(XPDLReader2 forProcessNamed: 'multi-embedded' withString: self processDefinition_Embedded_Embedded_Proc)
			connectProcesses;
			yourself