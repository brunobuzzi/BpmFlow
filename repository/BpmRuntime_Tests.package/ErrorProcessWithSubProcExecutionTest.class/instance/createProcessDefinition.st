other
createProcessDefinition
	| xpdlReader processGenerator |

	xpdlReader := (self defaultXpdlReaderClass forProcessNamed: 'dashboard-error-sub-proc' withString: XPDLProcessDefinitionTemplate xpdlDefinition_process_error_main_proc)
			addXPDLDocument: (XMLDOMParser parse: XPDLProcessDefinitionTemplate xpdlDefinition_process_error_sub_proc) namedAs: 'form-process';
			connectProcesses;
			yourself.

	processGenerator := BpmProcessGenerator on: xpdlReader xpdlPackages root: testRoot.
	processGenerator mapProcess: 'dashboard-error-sub-proc' toApplication: (self getOrbeonApplicationClass getExistingBpmApplicationOrCreateNewNamed: 'ue');
		mapProcess: 'form-process' toApplication: (self getOrbeonApplicationClass getExistingBpmApplicationOrCreateNewNamed: 'ue');
		generateAllProcess.

	processGenerator processesDo: [:each | each addToCache].

	^processGenerator getProcessDefinitionNamed: 'dashboard-error-sub-proc' ifNone: [self assert: false].