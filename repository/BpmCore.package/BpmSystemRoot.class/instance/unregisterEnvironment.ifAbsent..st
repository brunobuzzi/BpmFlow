environments
unregisterEnvironment: aBpmEnvironment ifAbsent: aBlock

	(environments includesKey: aBpmEnvironment name) ifFalse: [^aBlock value].

	^environments removeKey: aBpmEnvironment name