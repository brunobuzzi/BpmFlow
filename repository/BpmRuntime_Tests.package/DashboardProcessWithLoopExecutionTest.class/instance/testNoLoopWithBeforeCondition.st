test
testNoLoopWithBeforeCondition
	| endArtifact |

	procInstance atExternalVariable: 'condition' put: 9;
		triggerStartEventWith: (self getUserNamed: 'john').

	self assert: (procInstance startEvent getDefinitionName = 'start').
	self assert: procInstance currentActivities size equals: 0.

	endArtifact := procInstance endEventsAsOrderedCollection detect: [:each | each getDefinitionName = 'end'] ifNone: [self assert: false].
	self assert: endArtifact isEndEvent.