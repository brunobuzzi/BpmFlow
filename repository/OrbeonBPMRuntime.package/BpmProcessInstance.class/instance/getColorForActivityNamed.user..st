xpdl
getColorForActivityNamed: aString user: aBpmUser

	(currentActivities anySatisfy: [:each | each getDefinitionName = aString]) 
	ifTrue: [^aBpmUser getProperty: 'svg.task.fillColor.running'].

	(executedActivities anySatisfy: [:each | each getDefinitionName = aString]) 
	ifTrue: [^aBpmUser getProperty: 'svg.task.fillColor.done'].

	(runningGateways anySatisfy: [:each | each getDefinitionName = aString]) 
	ifTrue: [^aBpmUser getProperty: 'svg.task.fillColor.running'].

	(executedGateways anySatisfy: [:each | each getDefinitionName = aString]) 
	ifTrue: [^aBpmUser getProperty: 'svg.task.fillColor.done'].

	^'lightgray'