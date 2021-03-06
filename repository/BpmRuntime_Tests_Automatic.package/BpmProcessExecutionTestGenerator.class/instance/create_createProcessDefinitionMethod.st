cg createProcessDefinition
create_createProcessDefinitionMethod
	| codeStream mainProcess |

	codeStream := String new writeStream.
	self createProcessesXPDLTemplates.

	codeStream nextPutAll: 'createProcessDefinition'; cr; tab;
		nextPutAll: '| xpdlReader processGenerator |'; cr;cr;tab.

	mainProcess := procInstance getProcessesTreeAsCollection at: 1.
	codeStream nextPutAll: 'xpdlReader := (self defaultXpdlReaderClass forProcessNamed: ', mainProcess processName quoted, ' withString: XPDLProcessDefinitionTemplate ', (self getProcessTemplateMethoNameFor: mainProcess), ')'.
	
	procInstance getProcessesTreeAsCollection allButFirst do: [:eachProc | 
		codeStream cr;tab; tab;
			nextPutAll: 'addXPDLDocument: (XMLDOMParser parse: XPDLProcessDefinitionTemplate ', (self getProcessTemplateMethoNameFor: eachProc), ') namedAs: ', eachProc processName quoted, ';'.
	].
	codeStream cr; tab;tab;
		nextPutAll: 'connectProcesses;';
		cr;tab;tab;
		nextPutAll: 'yourself.'.

	codeStream cr; tab;
		nextPutAll: 'processGenerator := BpmProcessGenerator on: xpdlReader xpdlPackages.'; cr;tab;
		nextPutAll: 'processGenerator '.

	procInstance getProcessesTreeAsCollection do: [:eachProc | 
		codeStream cr; tab;tab;
			nextPutAll: 'mapProcess: ', eachProc processName quoted;
			nextPutAll: ' toApplication: (self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: ', eachProc applicationName quoted, ');'.
	].

	codeStream cr; tab;tab;
		nextPutAll: 'generateAllProcess.';
		cr;tab;
		nextPutAll: 'processGenerator processes do: [:each | each addToCache].'.

	procInstance getProcessesTreeAsCollection do: [:eachProc |  
		codeStream cr; tab;
			nextPutAll: 'processGenerator getProcessDefinitionNamed: ', eachProc processName quoted , ' ifNone: [self assert: false].'.
	].
	^self compile: codeStream in: newTestClass asMethodNamed: #createProcessDefinition category: self categoryNameOther

"It should produce:
createProcessDefinition
	| xpdlReader processGenerator |

	xpdlReader := (self defaultXpdlReaderClass forProcessNamed: 'VisaAppliance' withString: XPDLProcessDefinitionTemplate xpdlExample_visa_apply)
			addXPDLDocument: (XMLDOMParser parse: XPDLProcessDefinitionTemplate xpdlExample_home_office_check) namedAs: 'Home-Office';
			addXPDLDocument:  (XMLDOMParser parse: XPDLProcessDefinitionTemplate xpdlExample_check_financial_data) namedAs: 'Check-Financial-Data';
			connectProcesses;
			yourself.

	processGenerator := BpmProcessGenerator on: xpdlReader xpdlPackages.
	processGenerator mapProcess: 'visa-appliance' toApplication: (self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: 'ue');
		mapProcess: 'home-office-check' toApplication: (self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: 'ue');
		mapProcess: 'check-financial-data' toApplication: (self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: 'ue');
		generateAllProcess.

	processGenerator processes do: [:each | each addToCache].

	^processGenerator getProcessDefinitionNamed: 'visa-appliance' ifNone: [self assert: false].
"