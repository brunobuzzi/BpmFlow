other
createProcessDefinition
	| generator reader |

	reader:= (self defaultXpdlReaderClass forProcessNamed: 'multi-embedded' withString: XPDLProcessDefinitionTemplate xpdlDefinition_Embedded_Embedded_Proc)
			connectProcesses;
			yourself.

	generator := BpmProcessGenerator on: reader xpdlPackages.

	generator 
		mapProcess: 'multi-embedded' toApplication: (self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: 'ue');
		generateAllProcess.

	generator processes do: [:each | each addToCache].

	^generator getProcessDefinitionNamed: 'multi-embedded' ifNone: []