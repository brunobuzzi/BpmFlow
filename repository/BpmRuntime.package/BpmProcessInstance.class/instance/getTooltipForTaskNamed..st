tasks
getTooltipForTaskNamed: aString

	^(self getTaskNamed: aString ifNone: [^nil]) externalObjectAsXmlString