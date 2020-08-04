other
testObjectsInLanes2
	| pool workflow lane1 |

	workflow := self getReusableWorkflow.
	pool := workflow parentPool.

	lane1 := pool getLaneNamed: 'administrator' ifNone: [self assert: false].

	self assert: (workflow startNodeIsIdenticalTo: (lane1 getAnyObjectNamed: 'start-resusable' ifNone: [self assert: false])).

	self assert: ((lane1 getAnyObjectNamed: 'end-reusable' ifNone: [self assert: false]) == workflow endNodesLast).

	self assert: ((lane1 getAnyObjectNamed: 'script-reusable' ifNone: [self assert: false]) == (workflow getScriptNamed: 'script-reusable' ifNone: [self assert: false])).