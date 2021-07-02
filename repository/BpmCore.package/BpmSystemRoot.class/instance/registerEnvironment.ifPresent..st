environments
registerEnvironment: aBpmEnvironment ifPresent: aBlock

	(environments includesKey: aBpmEnvironment name) ifTrue: [^aBlock value].

	^environments at: aBpmEnvironment name put: aBpmEnvironment