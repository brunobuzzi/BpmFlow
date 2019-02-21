xpdl
getColorForActivityNamed: aString user: aBpmUser

	(currentActivities anySatisfy: [:each | each getDefinitionName = aString]) 
	ifTrue: [^aBpmUser getProperty: 'svg.task.fillColor.running'].

	((executedActivities,executedScripts) anySatisfy: [:each | each getDefinitionName = aString]) 
	ifTrue: [^aBpmUser getProperty: 'svg.task.fillColor.done'].

	(runningGateways anySatisfy: [:each | each getDefinitionName = aString]) 
	ifTrue: [^aBpmUser getProperty: 'svg.task.fillColor.running'].

	(executedGateways anySatisfy: [:each | each getDefinitionName = aString]) 
	ifTrue: [^aBpmUser getProperty: 'svg.task.fillColor.done'].

	(subprocesses anySatisfy: [:each | (each getDefinitionName = aString) and: [each hasFinalized]])
	ifTrue: [^aBpmUser getProperty: 'svg.task.fillColor.done'].

	(self getLastEventNamed: aString ifNone: []) ifNotNil: [^aBpmUser getProperty: 'svg.task.fillColor.done'].
 
	^'lightgray'