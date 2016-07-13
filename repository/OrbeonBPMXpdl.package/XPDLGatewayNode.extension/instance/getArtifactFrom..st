*orbeonBPMXpdl
getArtifactFrom: aBpmProcessDefinition

	^aBpmProcessDefinition getGatewayNamed: self getName ifNone: [nil]