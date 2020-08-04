test proc 2 lanes
testObjectsInLanes2
	| pool workflow lane1 |

	pool := self getFixIssuePool.
	workflow := self getFixIssueWorkflow.

	lane1 := pool getLaneNamed: 'developer' ifNone: [self assert: false].

	self assert: (workflow startNodeIsIdenticalTo: (lane1 getAnyObjectNamed: 'start' ifNone: [self assert: false])).

	self assert: ((lane1 getAnyObjectNamed: 'analyze-issue' ifNone: [self assert: false]) == (workflow getTaskNamed: 'analyze-issue' ifNone: [self assert: false])).

	self assert: ((lane1 getAnyObjectNamed: 'can fix' ifNone: [self assert: false]) == (workflow getGatewayNamed: 'can fix' ifNone: [self assert: false])).

	self assert: ((lane1 getAnyObjectNamed: 'report-fixes' ifNone: [self assert: false]) == (workflow getTaskNamed: 'report-fixes' ifNone: [self assert: false])).

	self assert: ((lane1 getAnyObjectNamed: 'internal-test' ifNone: [self assert: false]) == (workflow getTaskNamed: 'internal-test' ifNone: [self assert: false])).

	self assert: ((lane1 getAnyObjectNamed: 'report-to-architect' ifNone: [self assert: false]) == (workflow getSubprocessNamed: 'report-to-architect' ifNone: [self assert: false])).