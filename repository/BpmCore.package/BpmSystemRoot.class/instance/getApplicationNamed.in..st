applications
getApplicationNamed: applicationName in: environmentName
	| environment |

	environment := self getEnvironmentNamed: environmentName ifNone: [^nil].

	^environment applicationNamed: applicationName ifNone: [nil]