other
setUp

	reader := (self getXpdlReaderClass forProcessNamed: 'multi-embedded' withString: XPDLProcessDefinitionTemplate xpdlExample_Embedded_Embedded_Proc)
			connectProcesses;
			yourself.