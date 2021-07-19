test
testBlockTimerErrors
	| environment applications file1 currentVersion ue |

	environment := self getDefaultEnvironment.
	ue := self getDefaultApplication.
	applications := OrderedCollection with: ue.

	importProcess  := BpmXpdlImportProcess newForApplications: applications in: environment root: testRoot.

	file1 := WAFile new contents: XPDLProcessDefinitionTemplate xpdlDefinition_timer_block_errors; fileName: 'import-errors.xpdl'; yourself.

	importProcess 
		setApplicationName: 'import-test-app' atIndex: 1;
		storeTemporaryXpdlFile: file1 atIndex: 1.

	currentVersion := (self defaultProcessDefinitionClass getLatestProcessDefinitionNamed: 'Process 123' in: 'import-test-app') ifNil: [0] ifNotNil: [:proDef | proDef version].
	importProcess importBizagiFiles.

	self assert: importProcess hasWarnings.	
	self deny: importProcess isImportSuccessful.

	self assert: importProcess detectedItemsSize equals: 2.
	self assert: (importProcess detectedItems anySatisfy: [:each | each code = 400]).