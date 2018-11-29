searching
getLanesForSubProcessTaskNamed: aString

	^lanes select: [:each | each hasSubProcessTaskNamed: aString]