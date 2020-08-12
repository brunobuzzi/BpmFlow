test proc 1 conditions
testTransitionTestOkConditions
	| process transition |

	process := self getTestCaseWorkflow.
	transition := process transitionsDetect: [:each | each endNodeIsIdenticalTo:  (process getTaskNamed: 'test-ok' ifNone: [self assert: false])].

	self assert: (transition startCondition = '[:form | form result ~= ''failed'']')