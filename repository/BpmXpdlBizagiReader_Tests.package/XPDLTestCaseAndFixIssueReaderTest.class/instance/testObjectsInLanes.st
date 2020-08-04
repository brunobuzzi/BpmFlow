test proc 1 lanes
testObjectsInLanes
	| pool workflow lane1 lane2 lane3 |

	pool := self getTestCasePool.
	workflow := self getTestCaseWorkflow.

	lane1 := pool getLaneNamed: 'developer' ifNone: [self assert: false].
	lane2 := pool getLaneNamed: 'test-expert' ifNone: [self assert: false].
	lane3 := pool getLaneNamed: 'tester' ifNone: [self assert: false].

	self assert: ((lane1 getAnyObjectNamed: 'fix-issue' ifNone: [self assert: false]) == (workflow getSubprocessNamed: 'fix-issue' ifNone: [self assert: false])).

	self assert: (workflow startNodeIsIdenticalTo: (lane2 getAnyObjectNamed: 'start' ifNone: [self assert: false])).

	self assert: ((lane2 getAnyObjectNamed: 'analyze-issue-report' ifNone: [self assert: false]) == (workflow getTaskNamed: 'analyze-issue-report' ifNone: [self assert: false])).

	self assert: ((lane2 getAnyObjectNamed: 'accept-issue' ifNone: [self assert: false]) == (workflow getGatewayNamed: 'accept-issue' ifNone: [self assert: false])).

	self assert: ((lane2 getAnyObjectNamed: 'end' ifNone: [self assert: false]) == (workflow getEndNodeNamed: 'end' ifNone: [self assert: false])).

	self assert: ((lane3 getAnyObjectNamed: 'execute-test' ifNone: [self assert: false]) == (workflow getTaskNamed: 'execute-test' ifNone: [self assert: false])).

	self assert: ((lane3 getAnyObjectNamed: 'is-issue' ifNone: [self assert: false]) == (workflow getGatewayNamed: 'is-issue' ifNone: [self assert: false])).

	self assert: ((lane3 getAnyObjectNamed: 'test-ok' ifNone: [self assert: false]) == (workflow getTaskNamed: 'test-ok' ifNone: [self assert: false])).