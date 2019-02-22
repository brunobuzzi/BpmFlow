other
createEnviroment
	| envName environment |

	envName := self componentValueAt: 'envName'.
	(envName isNil or: [envName isEmpty]) ifTrue: [^self].

	environment := BpmEnvironment getExistingEnvironmentOrCreateNewNamed: envName.

	environment seasideApplicationName: (self componentValueAt: 'seasideApplicationName' ifAbsent: ['bpmflow'])