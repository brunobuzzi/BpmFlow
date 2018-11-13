other
setUp
	| reader |

	super setUp.

	reader:= (self getXpdlReaderClass forProcessNamed: 'ReusableEmbeddedProc' withString: self processDefinition_Reusable_Embedded_Proc)
			addXPDLDocument: (XMLDOMParser parse: self processDefinition_Reusable_Sub_Proc) namedAs: 'Reusable-Script';
			connectProcesses;
			yourself.

	processGenerator := BpmProcessGenerator on: reader xpdlPackages.

	processGenerator 
		mapProcess: 'ReusableEmbeddedProc' toApplication: (self getApplicationManagerClass getAnyApplicationNamed: 'ue');
		mapProcess: 'Reusable-Script' toApplication: (self getApplicationManagerClass getAnyApplicationNamed: 'ue');
		generateAllProcess.

	^processGenerator