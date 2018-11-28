*bpmxpdl
getArtifactFrom: aBpmProcessDefinition

	^aBpmProcessDefinition getEndEventNamed: self getName ifNone: [nil]