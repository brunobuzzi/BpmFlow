example
exampleEmbeddedSubProcSubProc
	| generator reader |

	reader:= XPDLProcessDefinitionTemplate xpdlReaderForEmbeddedEmbeddedProcess.

	generator := self on: reader xpdlPackages.

	generator 
		mapProcess: 'multi-embedded' toApplication: (self getApplicationManagerClass getAnyApplicationNamed: 'ue');
		generateAllProcess.

	^generator