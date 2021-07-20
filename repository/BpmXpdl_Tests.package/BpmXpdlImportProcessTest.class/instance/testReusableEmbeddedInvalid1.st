test
testReusableEmbeddedInvalid1
	"This import process should be rejected.
	The names of the subprocesses nodes are diffent from the subprocesses"
	| environment applications file1 file2 currentVersion ue |

	environment := self getDefaultEnvironment.
	ue := self getDefaultApplication.
	applications := OrderedCollection with: ue.

	importProcess  := BpmXpdlImportProcess newForApplications: applications in: environment root: testRoot.

	file1 := WAFile new contents: XPDLProcessDefinitionTemplate xpdlDefinition_ReusableEmbeddedProcInvalid1; fileName: 'reusable-invalid-main.xpdl'; yourself.
	file2 := WAFile new contents: XPDLProcessDefinitionTemplate xpdlDefinition_reusable_sub_proc_invalid; fileName: 'reusable-invalid-subproc.xpdl'; yourself.

	importProcess 
		setApplicationName: 'import-test-app' atIndex: 1;
		setApplicationName: 'import-test-app' atIndex: 2;
		storeTemporaryXpdlFile: file1 atIndex: 1;
		storeTemporaryXpdlFile: file2 atIndex: 2.

	currentVersion := (testRoot getLatestProcessDefinitionNamed: 'ReusableEmbeddedProcInvalid1' in: 'import-test-app') ifNil: [0] ifNotNil: [:proDef | proDef version].
	importProcess importBizagiFiles.

	self assert: importProcess hasWarnings.	
	self deny: importProcess isImportSuccessful.
	self assert: importProcess detectedItemsSize equals: 1. "the names of the subprocesses nodes are diffent from the subprocesses"
	self assert: (importProcess detectedItems allSatisfy: [:each | each code = 300])