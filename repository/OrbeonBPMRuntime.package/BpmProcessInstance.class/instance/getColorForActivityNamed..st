xpdl
getColorForActivityNamed: aString

	(currentActivities anySatisfy: [:each | each getDefinitionName = aString]) ifTrue: [^'lightblue'].

	(executedActivities anySatisfy: [:each | each getDefinitionName = aString]) ifTrue: [^'lightgreen'].

	(runningGateways anySatisfy: [:each | each getDefinitionName = aString]) ifTrue: [^'lightblue'].

	(executedGateways anySatisfy: [:each | each getDefinitionName = aString]) ifTrue: [^'lightgreen'].

	^'lightgray'