test
testOrbeon604
	| environment applications file1 currentVersion agesic formDefinition |

	environment := self getDefaultEnvironment.
	agesic := self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: 'agesic'.
	applications := OrderedCollection with: agesic.

	formDefinition := self formCreatorClass createDefinition: 'test' with: #form_example4 in: agesic.

	importProcess  := BpmXpdlImportProcess newForApplications: applications in: environment.

	file1 := WAFile new contents: XPDLProcessDefinitionTemplate xpdlExample_orbeon_error_604; fileName: 'import-errors.xpdl'; yourself.

	importProcess 
		setApplicationName: 'agesic' atIndex: 1;
		storeTemporaryXpdlFile: file1 atIndex: 1.

	currentVersion := (self defaultProcessDefinitionClass getLatestProcessDefinitionNamed: 'orbeon form error' in: 'agesic') ifNil: [0] ifNotNil: [:proDef | proDef version].
	importProcess importBizagiFiles.

	self assert: importProcess hasWarnings.	
	self deny: importProcess isImportSuccessful.

	self assert: importProcess detectedItemsSize equals: 8.
	self assert: (importProcess detectedItems allSatisfy: [:each | each code = 604]).