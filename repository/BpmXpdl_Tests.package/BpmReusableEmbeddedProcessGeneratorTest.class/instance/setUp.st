other
setUp
	| reader |

	super setUp.

"	reader:= (self defaultXpdlReaderClass forProcessNamed: 'ReusableEmbeddedProc' withString: XPDLProcessDefinitionTemplate xpdlDefinition_Reusable_Embedded_Proc)
			addXPDLDocument: (XMLDOMParser parse: XPDLProcessDefinitionTemplate xpdlDefinition_Reusable_Sub_Proc) namedAs: 'reusable-sub-proc';
			connectProcesses;
			yourself.

	processGenerator := BpmProcessGenerator on: reader xpdlPackages root: testRoot.

	processGenerator 
		mapProcess: 'ReusableEmbeddedProc' toApplication: (testRoot getExistingBpmApplicationOrCreateNewNamed: self defaultApplicationName);
		mapProcess: 'reusable-sub-proc' toApplication: (testRoot getExistingBpmApplicationOrCreateNewNamed: self defaultApplicationName);
		mapProcess: 'reusable-sub-proc' toApplication: (testRoot getExistingBpmApplicationOrCreateNewNamed: self defaultApplicationName);
		generateAllProcess.

	^processGenerator"


	^testRoot 
			newBpmProcessesDefinitionNamed: #('ReusableEmbeddedProc' 'reusable-sub-proc') 
			withXpdlStrings: (Array with: XPDLProcessDefinitionTemplate xpdlDefinition_Reusable_Embedded_Proc with: XPDLProcessDefinitionTemplate xpdlDefinition_Reusable_Sub_Proc) 
			multiplePools: false
			inEnvironmentNamed: (Array with: self defaultEnvironmentName with: self defaultEnvironmentName)
			inApplicationNamed: (Array with: self defaultApplicationName with: self defaultApplicationName)