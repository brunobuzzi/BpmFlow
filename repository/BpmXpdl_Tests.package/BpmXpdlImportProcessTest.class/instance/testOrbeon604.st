test
testOrbeon604
	| environment applications file1 currentVersion agesic |

	environment := self getDefaultEnvironment.
	agesic := testRoot getExistingOrbeonApplicationOrCreateNewNamed: 'agesic' in: 'env-test'.
	applications := OrderedCollection with: agesic.

	testRoot
			buildPublishedFormNamed: 'test'  
			title: ''
			withXml: testRoot newDefinitionTemplate formDefinition_agesic_test_all_types_4 
			in: agesic.

	importProcess  := BpmXpdlImportProcess newForApplications: applications in: environment root: testRoot.

	file1 := WAFile new contents: XPDLProcessDefinitionTemplate xpdlDefinition_orbeon_error_604; fileName: 'import-errors.xpdl'; yourself.

	importProcess 
		setApplicationName: 'agesic' atIndex: 1;
		storeTemporaryXpdlFile: file1 atIndex: 1.

	currentVersion := (testRoot getLatestProcessDefinitionNamed: 'orbeon form error' in: 'agesic') ifNil: [0] ifNotNil: [:proDef | proDef version].
	importProcess importBizagiFiles.

	self assert: importProcess hasWarnings.	
	self deny: importProcess isImportSuccessful.

	self assert: importProcess detectedItemsSize equals: 8.
	self assert: (importProcess detectedItems allSatisfy: [:each | each code = 604]).

	agesic resetDefinitionRegistry.

	testRoot removeFrom: 'env-test' in: 'agesic' processesName: #('orbeon form error') rolesName: #('administrator') usersName: #().