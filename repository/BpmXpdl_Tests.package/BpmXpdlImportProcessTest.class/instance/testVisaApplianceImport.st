other
testVisaApplianceImport
	| environment applications file1 file2 file3 currentVersion |

	environment := self defaultEnvironmentClass getExistingEnvironmentOrCreateNewNamed: 'env-ue'.
	applications := OrderedCollection with: (self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: 'ue').

	importProcess  := BpmXpdlImportProcess newForApplications: applications in: environment.

	file1 := WAFile new contents: XPDLProcessDefinitionTemplate xpdlExample_visa_apply; fileName: 'visa-apply.xpdl'; yourself.
	file2 := WAFile new contents: XPDLProcessDefinitionTemplate xpdlExample_home_office_check; fileName: 'home-office-check.xpdl'; yourself.
	file3 := WAFile new contents: XPDLProcessDefinitionTemplate xpdlExample_check_financial_data; fileName: 'check-financial-data.xpdl'; yourself.

	importProcess 
		setApplicationName: 'ue' atIndex: 1;
		setApplicationName: 'ue' atIndex: 2;
		setApplicationName: 'ue' atIndex: 3;
		storeTemporaryXpdlFile: file1 atIndex: 1;
		storeTemporaryXpdlFile: file2 atIndex: 2;
		storeTemporaryXpdlFile: file3 atIndex: 3.

	currentVersion := (self defaultProcessDefinitionClass getLatestProcessDefinitionNamed: 'visa-appliance' in: 'ue') ifNil: [0] ifNotNil: [:proDef | proDef version].
	importProcess importBizagiFiles.

	self deny: importProcess hasWarnings.
	self assert: importProcess generatedProcesses size equals: 3.

	importProcess storeBpmProcessDefinition.

	self assert: (importProcess getProcessDefinitionNamed: 'visa-appliance' ifNone: [self assert: false]) version equals: (currentVersion + 1).
	self assert: importProcess isImportSuccessful.