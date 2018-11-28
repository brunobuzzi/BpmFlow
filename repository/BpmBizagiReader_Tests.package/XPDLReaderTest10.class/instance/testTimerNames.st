other
testTimerNames
	| workflow events |

	workflow := self getWorkflow.

	events := workflow getTimerNodes asArray.

	self assert: (events size = 1).

	self assert: (events anySatisfy: [:each | each getName = 'timer']).