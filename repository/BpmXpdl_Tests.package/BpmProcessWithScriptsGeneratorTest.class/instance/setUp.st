other
setUp
	| reader |

	super setUp.

	reader:=  (self defaultXpdlReaderClass forProcessNamed: 'Process with Scripts' withString: XPDLProcessDefinitionTemplate xpdlDefinition_process_with_script)
				connectProcesses; 
				yourself.

	processGenerator := BpmProcessGenerator on: reader xpdlPackages.

	processGenerator 
		mapProcess: 'Process with Scripts' toApplication: (self defaultApplicationManagerClass getExistingBpmApplicationOrCreateNewNamed: self defaultApplicationName);
		generateAllProcess.

	^processGenerator