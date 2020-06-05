other
setUp
	| reader |

	super setUp.

	reader:= (self defaultXpdlReaderClass forProcessNamed: 'multi-embedded' withString: XPDLProcessDefinitionTemplate xpdlDefinition_Embedded_Embedded_Proc)
			connectProcesses;
			yourself.

	processGenerator := BpmProcessGenerator on: reader xpdlPackages.

	processGenerator 
		mapProcess: 'multi-embedded' toApplication: (self defaultApplicationManagerClass getExistingBpmApplicationOrCreateNewNamed: self defaultApplicationName);
		generateAllProcess.

	^processGenerator