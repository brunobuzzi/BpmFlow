other
createProcessDefinition
	| generator reader |

	reader:= (self defaultXpdlReaderClass forProcessNamed: 'ReusableEmbeddedProc' withString: XPDLProcessDefinitionTemplate xpdlDefinition_Reusable_Embedded_Proc)
			addXPDLDocument: (XMLDOMParser parse: XPDLProcessDefinitionTemplate xpdlDefinition_Reusable_Sub_Proc) namedAs: 'reusable-sub-proc';
			connectProcesses;
			yourself.

	generator := BpmProcessGenerator on: reader xpdlPackages root: testRoot.

	generator 
		mapProcess: 'ReusableEmbeddedProc' toApplication: (self getOrbeonApplicationClass getExistingBpmApplicationOrCreateNewNamed: 'ue');
		mapProcess: 'reusable-sub-proc' toApplication: (self getOrbeonApplicationClass getExistingBpmApplicationOrCreateNewNamed: 'ue');
		generateAllProcess.

	generator processesDo: [:each | each addToCache].

	^generator getProcessDefinitionNamed: 'ReusableEmbeddedProc' ifNone: []