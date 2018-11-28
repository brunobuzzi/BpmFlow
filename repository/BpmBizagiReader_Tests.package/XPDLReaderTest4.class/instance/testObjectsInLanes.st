other
testObjectsInLanes
	| pool workflow lane1 |

	pool := self getProcess1Pool.
	workflow := self getProcess1Workflow.

	lane1 := pool getLaneNamed: 'manager' ifNone: [self assert: false].

	self assert: ((lane1 getAnyObjectNamed: 'start' ifNone: [self assert: false]) == workflow startNode).

	self assert: ((lane1 getAnyObjectNamed: 'end' ifNone: [self assert: false]) == workflow endNodes asArray last).

	#('script') do: [:each | 
		self assert: 
			((lane1 getAnyObjectNamed: each ifNone: [self assert: false]) == 
			(workflow getScriptNamed: each ifNone: [self assert: false])).].