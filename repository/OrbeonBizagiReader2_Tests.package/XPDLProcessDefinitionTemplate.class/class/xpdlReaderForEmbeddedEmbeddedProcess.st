embedded subproc subproc
xpdlReaderForEmbeddedEmbeddedProcess

	^(self getXpdlReaderClass forProcessNamed: 'multi-embedded' withString: self processDefinition_Embedded_Embedded_Proc)
			connectProcesses;
			yourself