other
getBpmEnvironmentNamed: envName

	^BpmEnvironment getEnvironmentNamed: envName ifNone: [nil]