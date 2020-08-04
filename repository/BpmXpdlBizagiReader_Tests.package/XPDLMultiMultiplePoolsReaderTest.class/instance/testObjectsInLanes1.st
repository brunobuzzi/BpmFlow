other
testObjectsInLanes1
	| pool workflow lane1 lane2 lane3 task |

	workflow := self getProcess1Workflow.
	pool := workflow parentPool.
	lane1 := pool getLaneNamed: 'Lane 1' ifNone: [self assert: false].
	lane2 := pool getLaneNamed: 'Lane 2' ifNone: [self assert: false].
	lane3 := pool getLaneNamed: 'Lane 3' ifNone: [self assert: false].

	self assert: (workflow startNodeIsIdenticalTo: (lane2 getAnyObjectNamed: 'pr1_start' ifNone: [self assert: false])).

	task := workflow getTaskNamed: 'Task 1' ifNone: [self assert: false].
	self assert: ((lane3 getAnyObjectNamed: 'Task 1' ifNone: [self assert: false]) == task).

	self assert: ((lane1 getAnyObjectNamed: 'pr1_end1' ifNone: [self assert: false]) == (workflow endNodesLast)).
	self assert: ((lane1 getAnyObjectNamed: 'pr1_end2' ifNone: [self assert: false]) == (workflow endNodesFirst)).

	task := workflow getTaskNamed: 'Task 2' ifNone: [self assert: false].
	self assert: ((lane1 getAnyObjectNamed: 'Task 2' ifNone: [self assert: false]) == task).