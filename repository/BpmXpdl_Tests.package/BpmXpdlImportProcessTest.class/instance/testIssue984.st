test
testIssue984
	"This import process should be rejected.
	The names of the subprocesses nodes are diffent from the subprocesses"
	| environment applications file1 file2 currentVersion ue |

	environment := self getDefaultEnvironment.
	ue := self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: 'ue'.
	applications := OrderedCollection with: ue.

	importProcess  := BpmXpdlImportProcess newForApplications: applications in: environment.

	file1 := WAFile new contents: XPDLProcessDefinitionTemplate xpdlExample_ReusableEmbeddedProcInvalid1; fileName: 'ReusableEmbeddedProc.xpdl'; yourself.
	file2 := WAFile new contents: XPDLProcessDefinitionTemplate xpdlExample_reusable_sub_proc_invalid; fileName: 'reusable-sub-proc.xpdl'; yourself.

	importProcess 
		setApplicationName: 'ue' atIndex: 1;
		setApplicationName: 'ue' atIndex: 2;
		storeTemporaryXpdlFile: file1 atIndex: 1;
		storeTemporaryXpdlFile: file2 atIndex: 2.

	currentVersion := (self defaultProcessDefinitionClass getLatestProcessDefinitionNamed: 'ReusableEmbeddedProcInvalid1' in: 'ue') ifNil: [0] ifNotNil: [:proDef | proDef version].
	importProcess importBizagiFiles.

	self deny: importProcess hasWarnings.	
	self assert: importProcess isImportSuccessful.
	self assert: importProcess detectedItemsSize equals: 0.