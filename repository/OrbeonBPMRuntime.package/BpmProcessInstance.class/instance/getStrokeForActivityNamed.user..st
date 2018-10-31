xpdl
getStrokeForActivityNamed: aString user: aBpmUser

	(currentActivities anySatisfy: [:each | each getDefinitionName = aString]) 
	ifTrue: [^aBpmUser getProperty: 'svg.task.borderColor.running'].

	(executedActivities anySatisfy: [:each | each getDefinitionName = aString]) 
	ifTrue: [^aBpmUser getProperty: 'svg.task.borderColor.done'].

	(runningGateways anySatisfy: [:each | each getDefinitionName = aString]) 
	ifTrue: [^aBpmUser getProperty: 'svg.task.borderColor.running'].

	(executedGateways anySatisfy: [:each | each getDefinitionName = aString]) 
	ifTrue: [^aBpmUser getProperty: 'svg.task.borderColor.done'].

	(self getLastEventNamed: aString ifNone: []) 
	ifNotNil: [^aBpmUser getProperty: 'svg.task.borderColor.done'].

	^'darkgray'