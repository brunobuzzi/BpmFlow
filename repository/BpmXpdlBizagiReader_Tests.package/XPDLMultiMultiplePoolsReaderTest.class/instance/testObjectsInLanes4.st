other
testObjectsInLanes4
	| pool workflow lane8 lane9 task |

	workflow := self getProcess4Workflow.
	pool := workflow parentPool.
	lane8 := pool getLaneNamed: 'Lane 8' ifNone: [self assert: false].
	lane9 := pool getLaneNamed: 'Lane 9' ifNone: [self assert: false].

	self assert: ((lane9 getAnyObjectNamed: 'pr4_start' ifNone: [self assert: false]) == workflow startNode).

	#('Task 13') do: [:each | 
		task := workflow getTaskNamed: each ifNone: [self assert: false].
		self assert: ((lane9 getAnyObjectNamed: each ifNone: [self assert: false]) == task)].

	#('Task 14') do: [:each | 
		task := workflow getTaskNamed: each ifNone: [self assert: false].
		self assert: ((lane8 getAnyObjectNamed: each ifNone: [self assert: false]) == task)].

	self assert: ((lane9 getAnyObjectNamed: 'pr4_end1' ifNone: [self assert: false]) == (workflow endNodesLast)).
	self assert: ((lane8 getAnyObjectNamed: 'pr4_end2' ifNone: [self assert: false]) == (workflow endNodesFirst)).