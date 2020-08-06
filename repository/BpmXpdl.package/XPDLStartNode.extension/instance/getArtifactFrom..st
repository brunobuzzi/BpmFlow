*bpmxpdl
getArtifactFrom: aBpmProcessDefinition

	^aBpmProcessDefinition getStartEventNamed: self getName ifNone: []