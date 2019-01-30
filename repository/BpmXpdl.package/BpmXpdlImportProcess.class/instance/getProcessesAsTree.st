import
getProcessesAsTree
	"The receiver answer <aBpmTransitionTree>. 
	It is possible for <processesAsTree> to be <nil> if other issued were found before checking transitions code"

	processesAsTree ifNil: [processesAsTree := self generatedProcesses collect: [:each | each asTree]].

	^processesAsTree