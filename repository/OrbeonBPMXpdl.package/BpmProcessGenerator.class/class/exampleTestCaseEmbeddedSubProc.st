example
exampleTestCaseEmbeddedSubProc
	| generator reader |

	reader:= XPDLProcessDefinitionTemplate xpdlReaderForReusableEmbeddedProcess.

	generator := self on: reader xpdlPackages.

	generator 
		mapProcess: 'ReusableEmbeddedProc' toApplication: (self getApplicationManagerClass getAnyApplicationNamed: 'ue');
		mapProcess: 'Reusable-Script' toApplication: (self getApplicationManagerClass getAnyApplicationNamed: 'ue');
		generateAllProcess.

	^generator