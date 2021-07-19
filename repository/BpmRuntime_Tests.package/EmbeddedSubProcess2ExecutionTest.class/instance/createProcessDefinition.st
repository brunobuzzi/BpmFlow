other
createProcessDefinition
	| generator reader |

	reader:= (self defaultXpdlReaderClass forProcessNamed: 'multi-embedded' withString: XPDLProcessDefinitionTemplate xpdlDefinition_Embedded_Embedded_Proc)
			connectProcesses;
			yourself.

	generator := BpmProcessGenerator on: reader xpdlPackages root: testRoot.

	generator 
		mapProcess: 'multi-embedded' toApplication: (self getOrbeonApplicationClass getExistingBpmApplicationOrCreateNewNamed: 'ue');
		generateAllProcess.

	generator processesDo: [:each | each addToCache].

	^generator getProcessDefinitionNamed: 'multi-embedded' ifNone: []