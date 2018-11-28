*bpmxpdl
getArtifactFrom: aBpmProcessDefinition

	^aBpmProcessDefinition getSubProcessTaskNamed: self getName ifNone: [nil]