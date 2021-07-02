environments
getExistingEnvironmentOrCreateNewNamed: environmentName

	(environments includesKey: environmentName) ifTrue: [^environments at: environmentName].

	^BpmEnvironment newNamed: environmentName on: self