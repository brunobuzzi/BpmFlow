other
createProcessDefinition
	| generator reader |

	reader:= (self defaultXpdlReaderClass forProcessNamed: 'ReusableEmbeddedProc' withString: XPDLProcessDefinitionTemplate xpdlExample_process_with_deferred_script)
			addXPDLDocument: (XMLDOMParser parse: XPDLProcessDefinitionTemplate xpdlExample_Reusable_Sub_Proc) namedAs: 'Reusable-Script';
			connectProcesses;
			yourself.

	generator := BpmProcessGenerator on: reader xpdlPackages.

	generator 
		mapProcess: 'ReusableEmbeddedProc' toApplication: (self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: 'ue');
		mapProcess: 'Reusable-Script' toApplication: (self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: 'ue');
		generateAllProcess.

	^generator getProcessDefinitionNamed: 'ReusableEmbeddedProc' ifNone: []