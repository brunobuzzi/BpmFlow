process
renderArtifactPreviousFieldOf: artifactDefinition on: html

	artifactDefinition isGateway
	ifFalse: [artifactDefinition isSubprocessDefinition
				ifFalse: [self renderTaskDefinition: artifactDefinition on: html]
				ifTrue: [	self renderSubprocessDefinition: artifactDefinition on: html]]
	ifTrue: [self renderGatewayDefinition: artifactDefinition on: html.
			].