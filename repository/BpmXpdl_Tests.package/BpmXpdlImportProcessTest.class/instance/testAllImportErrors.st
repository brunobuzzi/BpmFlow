test
testAllImportErrors
	| environment applications file1 currentVersion ue errorCodes |

	environment := self getDefaultEnvironment.
	ue := self getDefaultApplication.
	applications := OrderedCollection with: ue.

	importProcess  := BpmXpdlImportProcess newForApplications: applications in: environment.

	file1 := WAFile new contents: XPDLProcessDefinitionTemplate xpdlDefinition_all_import_errors; fileName: 'import-errors.xpdl'; yourself.

	importProcess 
		setApplicationName: 'import-test-app' atIndex: 1;
		storeTemporaryXpdlFile: file1 atIndex: 1.

	currentVersion := (self defaultProcessDefinitionClass getLatestProcessDefinitionNamed: 'ReusableEmbeddedProcInvalid1' in: 'import-test-app') ifNil: [0] ifNotNil: [:proDef | proDef version].
	importProcess importBizagiFiles.

	self assert: importProcess hasWarnings.	
	self deny: importProcess isImportSuccessful.

	self assert: importProcess detectedItemsSize equals: 31.

	errorCodes := importProcess detectedItems collect: [:each | each code].

	#(50 58 62 100 104 106 108 116 120 200 204 208 404 500 504 508 608 609) do: [:each | self assert: (errorCodes includes: each)]