other
setUp

	reader := (self defaultXpdlReaderClass forProcessNamed: 'multi-embedded' withString: XPDLProcessDefinitionTemplate xpdlExample_Embedded_Embedded_Proc)
			connectProcesses;
			yourself.