test proc 2 inout transitions
testOutTransitions2
	| process transition task1 gateway |

	process := self getFixIssueProcess.
	transition := process getTransitionNamed: 'start-analyze' ifNone: [self assert: false].
	self assert: (process startEvent outTransitions last == transition).

	task1 := process getTaskNamed: 'analyze-issue' ifNone: [self assert: false].
	transition := process getTransitionNamed: 'evaluate-fix' ifNone: [self assert: false].
	self assert: (task1 outTransitions last == transition).

	gateway := process getGatewayNamed: 'can fix' ifNone: [self assert: false].
	transition := process getTransitionNamed: 'create-report' ifNone: [self assert: false].
	self assert: (gateway outTransitions first == transition).

	gateway := process getGatewayNamed: 'can fix' ifNone: [self assert: false].
	transition := process getTransitionNamed: 'no-fix-report' ifNone: [self assert: false].
	self assert: (gateway outTransitions last == transition).

	task1 := process getTaskNamed: 'report-fixes' ifNone: [self assert: false].
	transition := process getTransitionNamed: 'do-internal-test' ifNone: [self assert: false].
	self assert: (task1 outTransitions last == transition).

	task1 := process getSubProcessTaskNamed: 'report-to-architect' ifNone: [self assert: false].
	transition := process getTransitionNamed: 'architect-done' ifNone: [self assert: false].
	self assert: (task1 outTransitions last == transition).

	task1 := process getTaskNamed: 'internal-test' ifNone: [self assert: false].
	transition := process getTransitionNamed: 'finish-internal-test' ifNone: [self assert: false].
	self assert: (task1 outTransitions last == transition).