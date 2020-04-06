test
testIssue984
	"This import process should be rejected.
	The names of the subprocesses nodes are diffent from the subprocesses"
	| environment applications file1 file2 ue |

	environment := self getDefaultEnvironment.
	ue := self getDefaultApplication.
	applications := OrderedCollection with: ue.

	importProcess  := BpmXpdlImportProcess newForApplications: applications in: environment.

	file1 := WAFile new contents: XPDLProcessDefinitionTemplate xpdlDefinition_Reusable_Embedded_Proc; fileName: 'ReusableEmbeddedProc.xpdl'; yourself.
	file2 := WAFile new contents: XPDLProcessDefinitionTemplate xpdlDefinition_Reusable_Sub_Proc; fileName: 'reusable-sub-proc.xpdl'; yourself.

	importProcess 
		setApplicationName: 'import-test-app' atIndex: 1;
		setApplicationName: 'import-test-app' atIndex: 2;
		storeTemporaryXpdlFile: file1 atIndex: 1;
		storeTemporaryXpdlFile: file2 atIndex: 2.

	importProcess 
		importBizagiFiles;
		storeBpmProcessDefinition.

	self deny: importProcess hasWarnings.	
	self assert: importProcess isImportSuccessful.
	self assert: importProcess detectedItemsSize equals: 0.