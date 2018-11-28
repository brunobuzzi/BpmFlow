other
testEventsNames
	| workflow events |

	workflow := self getWorkflow.

	events := workflow getEventNodes asArray.

	self assert: (events size = 4).

	self assert: (events anySatisfy: [:each | each getName = 'start']).
	self assert: (events anySatisfy: [:each | each getName = 'end']).

	self assert: (events anySatisfy: [:each | each getName = 'timer']).

	self assert: (events anySatisfy: [:each | each getName = 'loan message']).