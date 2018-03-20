other
sewafTableForTasksOn: html
	| table |

	table := (self hasTableNamed: 'Tasks') 
		ifTrue: [self getTableNamed: 'Tasks' ifAbsent: []] 
		ifFalse: [self initializeSewafTableForTasksOn: html].

	table selectedObject:  selectedTask.

	^table