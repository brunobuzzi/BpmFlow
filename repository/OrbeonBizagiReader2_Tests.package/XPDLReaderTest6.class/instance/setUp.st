other
setUp

	reader := (self getXpdlReaderClass forProcessNamed: 'multi-embedded' withString: XPDLProcessDefinitionTemplate processDefinition_Embedded_Embedded_Proc)
			connectProcesses;
			yourself.