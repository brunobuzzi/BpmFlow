test
testVisaApplianceImport
	| environment applications file1 file2 file3 currentVersion ue |

	environment := self getDefaultEnvironment.
	ue := self getDefaultApplication.
	applications := OrderedCollection with: ue.

	importProcess  := BpmXpdlImportProcess newForApplications: applications in: environment.

	file1 := WAFile new contents: XPDLProcessDefinitionTemplate xpdlExample_visa_apply; fileName: 'visa-apply.xpdl'; yourself.
	file2 := WAFile new contents: XPDLProcessDefinitionTemplate xpdlExample_home_office_check; fileName: 'home-office-check.xpdl'; yourself.
	file3 := WAFile new contents: XPDLProcessDefinitionTemplate xpdlExample_check_financial_data; fileName: 'check-financial-data.xpdl'; yourself.

	importProcess 
		setApplicationName: 'import-test-app' atIndex: 1;
		setApplicationName: 'import-test-app' atIndex: 2;
		setApplicationName: 'import-test-app' atIndex: 3;
		storeTemporaryXpdlFile: file1 atIndex: 1;
		storeTemporaryXpdlFile: file2 atIndex: 2;
		storeTemporaryXpdlFile: file3 atIndex: 3.

	self createOrbeonForms. "we create OrbeonFormInstance that create OrboenFormDefinitions first, if not --> the import process will fail"
	currentVersion := (self defaultProcessDefinitionClass getLatestProcessDefinitionNamed: 'visa-appliance' in: 'import-test-app') ifNil: [0] ifNotNil: [:proDef | proDef version].
	importProcess importBizagiFiles.

	self deny: importProcess hasWarnings.
	self assert: importProcess generatedProcesses size equals: 3.

	importProcess storeBpmProcessDefinition.

	self assert: (importProcess getProcessDefinitionNamed: 'visa-appliance' ifNone: [self assert: false]) version equals: (currentVersion + 1).
	self assert: importProcess isImportSuccessful.