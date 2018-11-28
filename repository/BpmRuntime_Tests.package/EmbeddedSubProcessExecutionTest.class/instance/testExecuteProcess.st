test
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
		endArtifact := subProcessEmb endEventsAsOrderedCollection detect: [:each | each getDefinitionName = 'end-embedded'] ifNone: [self assert: false].
		self assert: endArtifact isEndEvent.

		subProcessReus := procInstance subprocesses last.
		self assert: (procInstance includesSubProcess: subProcessReus).
		self assert:  subProcessReus isSubProcess.
		self assert: (subProcessReus startEvent getDefinitionName = 'start-resusable').
		self assert: (subProcessReus hasFinalized).
		endArtifact := subProcessReus endEventsAsOrderedCollection detect: [:each | each getDefinitionName = 'end-reusable'] ifNone: [self assert: false].
		self assert: endArtifact isEndEvent.
	"Step X - Process End"
	endArtifact := procInstance endEvents asOrderedCollection last.
	endArtifact := procInstance endEventsAsOrderedCollection detect: [:each | each getDefinitionName = 'end'] ifNone: [self assert: false].
	self assert: endArtifact isEndEvent.