other
printCurrentEnvironmentName

	selectedEnvironment ifNil: [^self session bpmEnvironment name].

	^selectedEnvironment name