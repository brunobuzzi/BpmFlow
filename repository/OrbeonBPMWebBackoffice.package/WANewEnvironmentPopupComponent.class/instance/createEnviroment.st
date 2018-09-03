other
createEnviroment
	| envName |

	envName := self componentValueAt: 'envName'.
	(envName isNil or: [envName isEmpty]) ifTrue: [^self].

	BpmEnvironment getExistingEnvironmentOrCreateNewNamed: envName