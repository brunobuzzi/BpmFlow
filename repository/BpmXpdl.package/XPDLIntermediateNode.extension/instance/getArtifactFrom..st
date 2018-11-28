*bpmxpdl
getArtifactFrom: aBpmProcessDefinition

	^aBpmProcessDefinition getIntermediateEventNamed: self getName ifNone: [nil]