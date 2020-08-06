test
testExecuteProcess
	| script endArtifact subProcessEmb subProcessReus |

	procInstance := procDefinition createAndStartProcessInstance: (self getUserNamed: 'alberto').

	self assert: (procInstance startEventName = 'start').
	"Step 1 - Script Execution"
	script := procInstance executedScriptsLast.
	self assert: (script isDone).

	"Step 2 - After the Script the embedded subprocess is created"
		subProcessEmb := procInstance subprocessesFirst.
		self assert: (procInstance includesSubProcess: subProcessEmb).
		self assert:  subProcessEmb isSubProcess.
		self assert: (subProcessEmb startEventName = 'start-embedded').
		self assert: (subProcessEmb hasFinalized).
		endArtifact := subProcessEmb endEventsAsOrderedCollection detect: [:each | each getDefinitionName = 'end-embedded'] ifNone: [self assert: false].
		self assert: endArtifact isEndEvent.

		subProcessReus := procInstance subprocessesLast.
		self assert: (procInstance includesSubProcess: subProcessReus).
		self assert:  subProcessReus isSubProcess.
		self assert: (subProcessReus startEventName = 'start-resusable').
		self assert: (subProcessReus hasFinalized).
		endArtifact := subProcessReus endEventsAsOrderedCollection detect: [:each | each getDefinitionName = 'end-reusable'] ifNone: [self assert: false].
		self assert: endArtifact isEndEvent.
	"Step X - Process End"
	endArtifact := procInstance endEventsLast.
	endArtifact := procInstance endEventsAsOrderedCollection detect: [:each | each getDefinitionName = 'end'] ifNone: [self assert: false].
	self assert: endArtifact isEndEvent.