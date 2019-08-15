other
createProcessDefinition
	| generator reader |

	reader:= (self defaultXpdlReaderClass forProcessNamed: 'multi-embedded' withString: XPDLProcessDefinitionTemplate xpdlExample_Embedded_Embedded_Proc)
			connectProcesses;
			yourself.

	generator := BpmProcessGenerator on: reader xpdlPackages.

	generator 
		mapProcess: 'multi-embedded' toApplication: (self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: 'ue');
		generateAllProcess.

	^generator getProcessDefinitionNamed: 'multi-embedded' ifNone: []