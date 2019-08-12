other
testVisaApplianceImportInvalidSubProcessMapping
	| environment applications file1 file2 file3 currentVersion ue changedDocument changedXpdl |

	environment := self getDefaultEnvironment.
	ue := self getDefaultApplication.
	applications := OrderedCollection with: ue.

	importProcess  := BpmXpdlImportProcess newForApplications: applications in: environment.

	changedDocument := XMLDOMParser parse: XPDLProcessDefinitionTemplate xpdlExample_visa_apply.
	changedXpdl := changedDocument allElementsDetect: [:each | (each attributeAt: 'Name') = 'home-office-check'].
	changedXpdl attributeAt: 'Name' put: 'SubProcessNameDoesNotMap'.

	file1 := WAFile new contents: changedDocument asString; fileName: 'visa-apply.xpdl'; yourself.
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

	self assert: importProcess hasWarnings.
	self assert: (importProcess warnings allSatisfy: [:each | each code = 300]). "Sub Process Activity without Process Definition"