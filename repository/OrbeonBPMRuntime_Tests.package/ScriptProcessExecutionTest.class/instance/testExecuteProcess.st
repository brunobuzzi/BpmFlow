test
testExecuteProcess
	| script endArtifact |

	procInstance := procDefinition createAndStartProcessInstance: (self getUserNamed: 'alberto').

	self assert: (procInstance startEvent getDefinitionName = 'start').
	"Step 1 - Script Execution"
	script := procInstance executedScripts last.
	self assert: (script isFinished).
	self assert: (Smalltalk includesKey: #Test_Temps).
	self assert: (procInstance getScriptVariableNamed: 'myTempVar' ifNone: [^self assert: false]) = 64.

	"Step 2 - Process End"
	endArtifact := procInstance endEvents asOrderedCollection last.
	self assert: ((endArtifact getDefinitionName = 'end') and: [endArtifact isEndEvent]).
	self assert: procInstance hasFinalized.