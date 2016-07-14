test proc 3 lanes
testObjectsInLanes3
	| pool workflow lane1 |

	pool := self getReportToArchitectPool.
	workflow := self getReportToArchitectWorkflow.

	lane1 := pool getLaneNamed: 'architect' ifNone: [self assert: false].

	self assert: ((lane1 getAnyObjectNamed: 'start' ifNone: [self assert: false]) == workflow startNode).

	self assert: ((lane1 getAnyObjectNamed: 'analyze-developer-report' ifNone: [self assert: false]) == (workflow getTaskNamed: 'analyze-developer-report' ifNone: [self assert: false])).

	self assert: ((lane1 getAnyObjectNamed: 'has-solution' ifNone: [self assert: false]) == (workflow getGatewayNamed: 'has-solution' ifNone: [self assert: false])).

	self assert: ((lane1 getAnyObjectNamed: 'report-workaround' ifNone: [self assert: false]) == (workflow getTaskNamed: 'report-workaround' ifNone: [self assert: false])).

	self assert: ((lane1 getAnyObjectNamed: 'report-solution' ifNone: [self assert: false]) == (workflow getTaskNamed: 'report-solution' ifNone: [self assert: false])).

	self assert: ((lane1 getAnyObjectNamed: 'end' ifNone: [self assert: false]) == (workflow getEndNodeNamed: 'end' ifNone: [self assert: false])).