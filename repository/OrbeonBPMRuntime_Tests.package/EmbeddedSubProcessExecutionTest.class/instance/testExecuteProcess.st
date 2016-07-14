other
testExecuteProcess
	| script endArtifact subProcessEmb subProcessReus |

	procInstance := procDefinition createAndStartProcessInstance: (self getUserNamed: 'alberto').

	self assert: (procInstance startEvent getDefinitionName = 'start').
	"Step 1 - Script Execution"
	script := procInstance executedScripts last.
	self assert: (script isFinished).

	"Step 2 - After the Script the embedded subprocess is created"
		subProcessEmb := procInstance subprocesses first.
		self assert: (procInstance includesSubProcess: subProcessEmb).
		self assert:  subProcessEmb isSubProcess.
		self assert: (subProcessEmb startEvent getDefinitionName = 'start-embedded').
		self assert: (subProcessEmb hasFinalized).
		endArtifact := subProcessEmb endEvents asOrderedCollection last.
		self assert: ((endArtifact getDefinitionName = 'end-embedded') and: [endArtifact isEndEvent]).

		subProcessReus := procInstance subprocesses last.
		self assert: (procInstance includesSubProcess: subProcessReus).
		self assert:  subProcessReus isSubProcess.
		self assert: (subProcessReus startEvent getDefinitionName = 'start-resusable').
		self assert: (subProcessReus hasFinalized).
		endArtifact := subProcessReus endEvents asOrderedCollection last.
		self assert: ((endArtifact getDefinitionName = 'end-reusable') and: [endArtifact isEndEvent]).
	"Step X - Process End"
	endArtifact := procInstance endEvents asOrderedCollection last.
	self assert: ((endArtifact getDefinitionName = 'end') and: [endArtifact isEndEvent]).
	self assert: procInstance hasFinalized.