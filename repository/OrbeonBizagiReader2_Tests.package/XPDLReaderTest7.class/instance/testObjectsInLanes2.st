other
testObjectsInLanes2
	| pool workflow lane4 lane5 task |

	workflow := self getProcess2Workflow.
	pool := workflow parentPool.
	lane4 := pool getLaneNamed: 'Lane 4' ifNone: [self assert: false].
	lane5 := pool getLaneNamed: 'Lane 5' ifNone: [self assert: false].

	self assert: ((lane5 getAnyObjectNamed: 'pr2_start' ifNone: [self assert: false]) == workflow startNode).

	#('Task 3' 'Task 4' 'Task 6') do: [:each | 
		task := workflow getTaskNamed: each ifNone: [self assert: false].
		self assert: ((lane5 getAnyObjectNamed: each ifNone: [self assert: false]) == task)].

	#('Task 5' 'Task 7' 'Task 8') do: [:each | 
		task := workflow getTaskNamed: each ifNone: [self assert: false].
		self assert: ((lane4 getAnyObjectNamed: each ifNone: [self assert: false]) == task)].

	self assert: ((lane4 getAnyObjectNamed: 'pr2_end1' ifNone: [self assert: false]) == (workflow endNodes asArray first)).
	self assert: ((lane4 getAnyObjectNamed: 'pr2_end2' ifNone: [self assert: false]) == (workflow endNodes asArray last)).