other
attachedEventsNamed: aString

	^attachedEvents select: [:each | each getDefinitionName = aString]