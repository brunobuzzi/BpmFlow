tasks
acceptTask: aBpmAbstractTaskDefinition

	(visitedTasks identityIncludes: aBpmAbstractTaskDefinition) ifTrue: [^self].

	visitedTasks add: aBpmAbstractTaskDefinition.

	aBpmAbstractTaskDefinition outTransitionsDo: [:each | each acceptVisitor: self].

	aBpmAbstractTaskDefinition isTaskDefinition
	ifTrue: [aBpmAbstractTaskDefinition attachedEvents do: [:each | each acceptVisitor: self]].