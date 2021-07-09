other
setEnvironment: envName
	| env |

	env := self session systemRoot getEnvironmentNamed: envName ifNone: [NoEnvironmentException signal: 'No Environment named [', envName, ']'].

	self session bpmEnvironment: env