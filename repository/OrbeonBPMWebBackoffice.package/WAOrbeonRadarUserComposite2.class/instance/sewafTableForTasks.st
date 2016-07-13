free transitions
sewafTableForTasks
	| table |

	table := (self hasTableNamed: 'Tasks') 
		ifTrue: [self getTableNamed: 'Tasks' ifAbsent: []] 
		ifFalse: [self initializeSewafTableForTasks].

	table buttonLabel: self buttonLabel.

	^table