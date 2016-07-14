other
createProcessDefinition
	| generator reader |

	reader:= XPDLProcessDefinitionTemplate xpdlReaderForReusableEmbeddedProcess.

	generator := BpmProcessGenerator on: reader xpdlPackages.

	generator 
		mapProcess: 'ReusableEmbeddedProc' toApplication: (self getApplicationManagerClass getAnyApplicationNamed: 'ue');
		mapProcess: 'Reusable-Script' toApplication: (self getApplicationManagerClass getAnyApplicationNamed: 'ue');
		generateAllProcess.

	^generator getProcessDefinitionNamed: 'ReusableEmbeddedProc' ifNone: []