other
testObjectsInLanes2
	| pool workflow lane4 lane5 |

	pool := self getProcess2Pool.
	workflow := self getProcess2Workflow.

	lane4 := pool getLaneNamed: 'Lane 4' ifNone: [self assert: false].
	lane5 := pool getLaneNamed: 'Lane 5' ifNone: [self assert: false].

	self assert: ((lane5 getAnyObjectNamed: 'start' ifNone: [self assert: false]) == workflow startNode).

	#('Task 8' 'Task 9') do: [:each | 
		self assert: 
			((lane4 getAnyObjectNamed: each ifNone: [self assert: false]) == 
			(workflow getTaskNamed: each ifNone: [self assert: false])).].

	#('Task 7') do: [:each | 
		self assert: 
			((lane5 getAnyObjectNamed: each ifNone: [self assert: false]) == 
			(workflow getTaskNamed: each ifNone: [self assert: false])).].