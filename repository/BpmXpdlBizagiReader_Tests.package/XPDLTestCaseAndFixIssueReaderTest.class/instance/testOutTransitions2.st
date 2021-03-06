test proc 2 inout transitions
testOutTransitions2
	| process transition task1 gateway |

	process := self getFixIssueWorkflow.
	transition := process getTransitionNamed: 'start-analyze' ifNone: [self assert: false].
	self assert: (process startNodeOutTransitionsLast == transition).

	task1 := process getTaskNamed: 'analyze-issue' ifNone: [self assert: false].
	transition := process getTransitionNamed: 'evaluate-fix' ifNone: [self assert: false].
	self assert: (task1 outTransitionsLast == transition).

	gateway := process getGatewayNamed: 'can fix' ifNone: [self assert: false].
	transition := process getTransitionNamed: 'create-report' ifNone: [self assert: false].
	self assert: (gateway outTransitionsFirst == transition).

	gateway := process getGatewayNamed: 'can fix' ifNone: [self assert: false].
	transition := process getTransitionNamed: 'no-fix-report' ifNone: [self assert: false].
	self assert: (gateway outTransitionsLast == transition).

	task1 := process getTaskNamed: 'report-fixes' ifNone: [self assert: false].
	transition := process getTransitionNamed: 'do-internal-test' ifNone: [self assert: false].
	self assert: (task1 outTransitionsLast == transition).

	task1 := process getSubprocessNamed: 'report-to-architect' ifNone: [self assert: false].
	transition := process getTransitionNamed: 'architect-done' ifNone: [self assert: false].
	self assert: (task1 outTransitionsLast == transition).

	task1 := process getTaskNamed: 'internal-test' ifNone: [self assert: false].
	transition := process getTransitionNamed: 'finish-internal-test' ifNone: [self assert: false].
	self assert: (task1 outTransitionsLast == transition).