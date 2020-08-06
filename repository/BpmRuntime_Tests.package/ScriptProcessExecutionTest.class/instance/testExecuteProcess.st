test
testExecuteProcess
	| script endArtifact |

	procInstance := procDefinition createAndStartProcessInstance: (self getUserNamed: 'alberto').

	self assert: (procInstance startEventName = 'start').
	"Step 1 - Script Execution"
	script := procInstance executedScriptsLast.
	self assert: (script isDone).
	self assert: (Smalltalk includesKey: #Test_Temps).
	self assert: (procInstance getScriptVariableNamed: 'myTempVar' ifNone: [^self assert: false]) = 64.

	"Step 2 - Process End"
	self assert: procInstance hasFinalized.
	endArtifact := procInstance endEventsAsOrderedCollection detect: [:each | each getDefinitionName = 'end'] ifNone: [self assert: false].
	self assert: endArtifact isEndEvent.