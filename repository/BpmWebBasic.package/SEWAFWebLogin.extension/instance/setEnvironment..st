*bpmwebbasic-as yet unclassified
setEnvironment: envName
	| env |

	env := BpmEnvironment getEnvironmentNamed: envName ifNone: [NoEnvironmentException signal: 'No Environment named [', envName, ']'].

	self session bpmEnvironment: env