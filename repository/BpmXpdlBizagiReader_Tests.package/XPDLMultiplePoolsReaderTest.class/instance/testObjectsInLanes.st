other
testObjectsInLanes
	| pool workflow lane1 lane2 lane3 |

	pool := self getProcess1Pool.
	workflow := self getProcess1Workflow.

	lane1 := pool getLaneNamed: 'Lane 1' ifNone: [self assert: false].
	lane2 := pool getLaneNamed: 'Lane 2' ifNone: [self assert: false].
	lane3 := pool getLaneNamed: 'Lane 3' ifNone: [self assert: false].

	self assert: (workflow startNodeIsIdenticalTo: (lane1 getAnyObjectNamed: 'start' ifNone: [self assert: false])).

	#('Task 1' 'Task 2' 'Task 4') do: [:each | 
		self assert: 
			((lane1 getAnyObjectNamed: each ifNone: [self assert: false]) == 
			(workflow getTaskNamed: each ifNone: [self assert: false])).].

	#('Task 6') do: [:each | 
		self assert: 
			((lane2 getAnyObjectNamed: each ifNone: [self assert: false]) == 
			(workflow getTaskNamed: each ifNone: [self assert: false])).].

	#('Task 3' 'Task 5') do: [:each | 
		self assert: 
			((lane3 getAnyObjectNamed: each ifNone: [self assert: false]) == 
			(workflow getTaskNamed: each ifNone: [self assert: false])).].