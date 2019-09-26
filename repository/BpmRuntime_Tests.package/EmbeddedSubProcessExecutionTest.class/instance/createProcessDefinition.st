other
createProcessDefinition
	| generator reader |

	reader:= (self defaultXpdlReaderClass forProcessNamed: 'ReusableEmbeddedProc' withString: XPDLProcessDefinitionTemplate xpdlExample_Reusable_Embedded_Proc)
			addXPDLDocument: (XMLDOMParser parse: XPDLProcessDefinitionTemplate xpdlExample_Reusable_Sub_Proc) namedAs: 'reusable-sub-proc';
			connectProcesses;
			yourself.

	generator := BpmProcessGenerator on: reader xpdlPackages.

	generator 
		mapProcess: 'ReusableEmbeddedProc' toApplication: (self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: 'ue');
		mapProcess: 'reusable-sub-proc' toApplication: (self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: 'ue');
		generateAllProcess.

	generator processes do: [:each | each addToCache].

	^generator getProcessDefinitionNamed: 'ReusableEmbeddedProc' ifNone: []