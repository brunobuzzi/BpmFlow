searching
getLanesForEventNamed: aString

	^lanes select: [:each | each hasEventNamed: aString]