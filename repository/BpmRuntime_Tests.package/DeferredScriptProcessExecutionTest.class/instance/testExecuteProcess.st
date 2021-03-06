test
testExecuteProcess
	| script endArtifact scriptExecutor scriptsToExecuteSize |

	scriptExecutor := BpmScriptExecutor default.
	scriptsToExecuteSize := scriptExecutor scriptsToExecuteSize.
	procInstance := procDefinition createAndStartProcessInstance: (self getUserNamed: 'alberto').

	self assert: (procInstance startEventName = 'start').
	"Step 1 - Script Execution - (the execution is deffered)"
	self assert: scriptExecutor scriptsToExecuteSize equals: (scriptsToExecuteSize + 1). "this script has been added to the executor"
	script := scriptExecutor scriptsToExecute detect: [:each | each process id = procInstance id] ifNone: [self assert: false].
	self deny: script isDone.

	scriptExecutor executeScript: script. "execute the deferred script" "in a production environment this is done by a separate Gem"

	self assert: (scriptExecutor scriptsToExecuteSize = scriptsToExecuteSize). "this script has been executed --> same number as before"

	self assert: script isDone.
	self assert: (Smalltalk includesKey: #Test_Temps).
	self assert: (procInstance getScriptVariableNamed: 'myTempVar' ifNone: [^self assert: false]) = 64.

	"Step 2 - Process End"
	self assert: procInstance hasFinalized.
	endArtifact := procInstance endEventsAsOrderedCollection detect: [:each | each getDefinitionName = 'end'] ifNone: [self assert: false].
	self assert: endArtifact isEndEvent.