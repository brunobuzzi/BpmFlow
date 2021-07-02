environments
unregisterEnvironment: aBpmEnvironment ifFalse: aBlock

	(environments includesKey: aBpmEnvironment name) ifFalse: [^aBlock value].

	^environments removeKey: aBpmEnvironment name