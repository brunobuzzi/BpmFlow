test
testNoAllImportErrors
	| environment applications file1 currentVersion ue |

	environment := self getDefaultEnvironment.
	ue := self getDefaultApplication.
	applications := OrderedCollection with: ue.

	importProcess  := BpmXpdlImportProcess newForApplications: applications in: environment.

	file1 := WAFile new contents: XPDLProcessDefinitionTemplate xpdlExample_all_import_errors; fileName: 'import-errors.xpdl'; yourself.

	importProcess 
		setApplicationName: 'import-test-app' atIndex: 1;
		storeTemporaryXpdlFile: file1 atIndex: 1.

	currentVersion := (self defaultProcessDefinitionClass getLatestProcessDefinitionNamed: 'ReusableEmbeddedProcInvalid1' in: 'import-test-app') ifNil: [0] ifNotNil: [:proDef | proDef version].
	importProcess importBizagiFiles.

	self assert: importProcess hasWarnings.	
	self deny: importProcess isImportSuccessful.
self halt.