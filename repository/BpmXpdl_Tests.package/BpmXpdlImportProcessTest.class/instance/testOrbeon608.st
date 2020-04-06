test
testOrbeon608
	| environment applications file1 currentVersion agesic |

	environment := self getDefaultEnvironment.
	agesic := self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: 'agesic'.
	applications := OrderedCollection with: agesic.

	self formCreatorClass createDefinition: 'test' with: #formDefinition_example_4 in: agesic.

	importProcess  := BpmXpdlImportProcess newForApplications: applications in: environment.

	file1 := WAFile new contents: XPDLProcessDefinitionTemplate xpdlDefinition_orbeon_error_604; fileName: 'import-errors.xpdl'; yourself.

	importProcess 
		setApplicationName: 'import-test-app' atIndex: 1;
		storeTemporaryXpdlFile: file1 atIndex: 1.

	currentVersion := (self defaultProcessDefinitionClass getLatestProcessDefinitionNamed: 'orbeon form error' in: 'import-test-app') ifNil: [0] ifNotNil: [:proDef | proDef version].
	importProcess importBizagiFiles.

	self assert: importProcess hasWarnings.	
	self deny: importProcess isImportSuccessful.

	self assert: importProcess detectedItemsSize equals: 1.
	self assert: (importProcess detectedItems anySatisfy: [:each | each code = 608]).