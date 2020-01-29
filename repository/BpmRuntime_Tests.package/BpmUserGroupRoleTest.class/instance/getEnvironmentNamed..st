query
getEnvironmentNamed: aString

	^environments at: aString ifAbsent: [self assert: false]