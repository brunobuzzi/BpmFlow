*bpmwebbasic
setEnvironment: envName
	| env |

	env := self defaultEnvironmentClass getEnvironmentNamed: envName ifNone: [NoEnvironmentException signal: 'No Environment named [', envName, ']'].

	self session bpmEnvironment: env