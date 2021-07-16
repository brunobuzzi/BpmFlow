other
getBpmEnvironmentNamed: envName

	^self session systemRoot getEnvironmentNamed: envName ifNone: [nil]