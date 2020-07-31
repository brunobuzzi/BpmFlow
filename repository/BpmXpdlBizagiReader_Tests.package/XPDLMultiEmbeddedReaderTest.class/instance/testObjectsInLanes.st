other
testObjectsInLanes
	| pool workflow lane1 |

	workflow := self getMainWorkflow.
	pool := workflow parentPool.

	lane1 := pool getLaneNamed: 'administrator' ifNone: [self assert: false].

	self assert: ((lane1 getAnyObjectNamed: 'start' ifNone: [self assert: false]) == workflow startNode).

	self assert: ((lane1 getAnyObjectNamed: 'end' ifNone: [self assert: false]) == workflow endNodesLast).

	self assert: ((lane1 getAnyObjectNamed: 'embedded 01' ifNone: [self assert: false]) == (workflow getSubprocessNamed: 'embedded 01' ifNone: [self assert: false])).

	#('script') do: [:each | 
		self assert: 
			((lane1 getAnyObjectNamed: each ifNone: [self assert: false]) == 
			(workflow getScriptNamed: each ifNone: [self assert: false])).].