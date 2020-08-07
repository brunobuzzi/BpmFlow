other
testTransitionHasSolutionCondition3
	| process transition |

	process := self getArchitectProcess.

	transition := process getTransitionNamed: 'create-workaround' ifNone: [self assert: false].
	self assert: (transition evaluationCodeIsEqualTo: '[:form | form hasSolution = ''no'']').


	transition := process getTransitionNamed: 'create-solution' ifNone: [self assert: false].
	self assert: (transition evaluationCodeIsEqualTo: '[:form | form hasSolution = ''yes'']')