test
testNoStartNoEndEventImportErrors
	| environment applications file1 currentVersion ue |

	environment := self getDefaultEnvironment.
	ue := self getDefaultApplication.
	applications := OrderedCollection with: ue.

	importProcess  := BpmXpdlImportProcess newForApplications: applications in: environment.

	file1 := WAFile new contents: XPDLProcessDefinitionTemplate xpdlDefinition_noStart_noEnd_import_errors; fileName: 'import-errors.xpdl'; yourself.

	importProcess 
		setApplicationName: 'import-test-app' atIndex: 1;
		storeTemporaryXpdlFile: file1 atIndex: 1.

	currentVersion := (self defaultProcessDefinitionClass getLatestProcessDefinitionNamed: 'ReusableEmbeddedProcInvalid1' in: 'import-test-app') ifNil: [0] ifNotNil: [:proDef | proDef version].
	importProcess importBizagiFiles.

	self assert: importProcess hasWarnings.	
	self deny: importProcess isImportSuccessful.
	self assert: importProcess detectedItemsSize equals: 7. 

	self assert: (importProcess detectedItems anySatisfy: [:each | each code = 112]). "no start event"
	self assert: (importProcess detectedItems anySatisfy: [:each | each code = 116]). "no end event"

	self assert: (importProcess detectedItems anySatisfy: [:each | each code = 58]).
	self assert: (importProcess detectedItems anySatisfy: [:each | each code = 62]).
	self assert: (importProcess detectedItems anySatisfy: [:each | each code = 50]).
	self assert: (importProcess detectedItems anySatisfy: [:each | each code = 112]).
	self assert: (importProcess detectedItems anySatisfy: [:each | each code = 120]).