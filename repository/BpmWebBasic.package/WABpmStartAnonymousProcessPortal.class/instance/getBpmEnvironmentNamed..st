other
getBpmEnvironmentNamed: envName

	^self defaultEnvironmentClass getEnvironmentNamed: envName ifNone: [nil]