process definition creation
generateProcessesAndStoreOnCache
	"The receiver store on cache of class <BpmProcessDefinition> all new process definitions in <processes> instance variable"
	| newProcesses |

	newProcesses := self processes collect: [:each | each addToCache].

	newProcesses do: [:eachDef | 
		(BpmProcessDefinition getProcessDefnitionWith: eachDef id in: eachDef applicationName) isNil 
		ifTrue: [failedImportProcesses add: eachDef].
	].

	successfulImport := failedImportProcesses isEmpty.

	^newProcesses