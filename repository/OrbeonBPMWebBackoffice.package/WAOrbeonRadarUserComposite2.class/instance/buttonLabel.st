free transitions
buttonLabel

	(listType = 'Possible Tasks') ifTrue: [^'Take Task'].

	(listType = 'Current Tasks') ifTrue: [^'Untake Task'].

	^''