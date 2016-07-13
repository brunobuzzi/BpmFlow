*orbeonBPMXpdl
getArtifactFrom: aBpmProcessDefinition

	^aBpmProcessDefinition getTaskNamed: self getName ifNone: [nil]