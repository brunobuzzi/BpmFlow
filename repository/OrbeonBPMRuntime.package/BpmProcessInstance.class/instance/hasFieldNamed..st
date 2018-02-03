execution
hasFieldNamed: aString

	^(definition getAllFieldNames includes: aString) or: [externalVariables includesKey: aString]