other
testObjectsInLanes3
	| pool workflow lane6 lane7 task |

	workflow := self getProcess3Workflow.
	pool := workflow parentPool.
	lane6 := pool getLaneNamed: 'Lane 6' ifNone: [self assert: false].
	lane7 := pool getLaneNamed: 'Lane 7' ifNone: [self assert: false].

	self assert: ((lane7 getAnyObjectNamed: 'pr3_start' ifNone: [self assert: false]) == workflow startNode).

	#('Task 9' 'Task 10') do: [:each | 
		task := workflow getTaskNamed: each ifNone: [self assert: false].
		self assert: ((lane7 getAnyObjectNamed: each ifNone: [self assert: false]) == task)].

	#('Task 11' 'Task 12') do: [:each | 
		task := workflow getTaskNamed: each ifNone: [self assert: false].
		self assert: ((lane6 getAnyObjectNamed: each ifNone: [self assert: false]) == task)].

	self assert: ((lane6 getAnyObjectNamed: 'pr3_end' ifNone: [self assert: false]) == (workflow endNodesFirst)).