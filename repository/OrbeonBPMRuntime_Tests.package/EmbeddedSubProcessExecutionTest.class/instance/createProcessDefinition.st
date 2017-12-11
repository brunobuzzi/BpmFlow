other
createProcessDefinition
	| generator reader |

	reader:= XPDLProcessDefinitionTemplate xpdlReaderForReusableEmbeddedProcess.

	generator := BpmProcessGenerator on: reader xpdlPackages.

	generator 
		mapProcess: 'ReusableEmbeddedProc' toApplication: (self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: 'ue');
		mapProcess: 'Reusable-Script' toApplication: (self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: 'ue');
		generateAllProcess.

	^generator getProcessDefinitionNamed: 'ReusableEmbeddedProc' ifNone: []