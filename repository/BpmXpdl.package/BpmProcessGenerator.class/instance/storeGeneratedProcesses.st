process definition creation
storeGeneratedProcesses
	"The receiver store all new process definitions in <processes> instance variable"
	| newProcesses |

	newProcesses := processes collect: [:each | each registerInApplication].

	newProcesses do: [:eachDef | 
		(systemRoot getProcessDefinitionWith: eachDef id in: eachDef applicationName) isNil 
		ifTrue: [failedImportProcesses add: eachDef].
	].

	successfulImport := failedImportProcesses isEmpty.

	^newProcesses