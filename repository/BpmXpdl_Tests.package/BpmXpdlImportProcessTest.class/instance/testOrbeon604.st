test
testOrbeon604
	| environment applications file1 currentVersion agesic formDefinition |

	environment := self getDefaultEnvironment.
	agesic := self getOrbeonApplicationClass getExistingBpmApplicationOrCreateNewNamed: 'agesic'.
	self getDefaultEnvironment registerApplication: agesic.
	applications := OrderedCollection with: agesic.

	formDefinition := 	self formCreatorClass buildDefinitionFrom: self newDefinitionTemplate formDefinition_agesic_test_all_types_4 name: 'test' in: agesic.

	importProcess  := BpmXpdlImportProcess newForApplications: applications in: environment.

	file1 := WAFile new contents: XPDLProcessDefinitionTemplate xpdlDefinition_orbeon_error_604; fileName: 'import-errors.xpdl'; yourself.

	importProcess 
		setApplicationName: 'agesic' atIndex: 1;
		storeTemporaryXpdlFile: file1 atIndex: 1.

	currentVersion := (self defaultProcessDefinitionClass getLatestProcessDefinitionNamed: 'orbeon form error' in: 'agesic') ifNil: [0] ifNotNil: [:proDef | proDef version].
	importProcess importBizagiFiles.

	self assert: importProcess hasWarnings.	
	self deny: importProcess isImportSuccessful.

	self assert: importProcess detectedItemsSize equals: 8.
	self assert: (importProcess detectedItems allSatisfy: [:each | each code = 604]).

	self getDefaultEnvironment unregisterApplication: agesic.
	agesic 
		resetDefinitionRegistry;
		removeFromCache.