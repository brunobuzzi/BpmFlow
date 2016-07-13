other
getArtifactFrom: aBpmProcessDefinition

	^aBpmProcessDefinition getScriptNamed: self getName ifNone: [nil]