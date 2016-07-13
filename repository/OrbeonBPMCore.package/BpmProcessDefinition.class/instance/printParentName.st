other
printParentName

	^self parentProcess ifNil: ['-'] ifNotNil: [:value | value processName]