other
testObjectsInLanes5
	| pool workflow lane10 task |

	workflow := self getProcess5Workflow.
	pool := workflow parentPool.
	lane10 := pool getLaneNamed: 'Lane 10' ifNone: [self assert: false].

	self assert: (workflow startNodeIsIdenticalTo: (lane10 getAnyObjectNamed: 'pr5_start' ifNone: [self assert: false])).

	#('Task 15' 'Task 16' 'Task 17') do: [:each | 
		task := workflow getTaskNamed: each ifNone: [self assert: false].
		self assert: ((lane10 getAnyObjectNamed: each ifNone: [self assert: false]) == task)].

	self assert: ((lane10 getAnyObjectNamed: 'pr5_end1' ifNone: [self assert: false]) == (workflow endNodesFirst)).
	self assert: ((lane10 getAnyObjectNamed: 'pr5_end2' ifNone: [self assert: false]) == (workflow endNodesLast)).