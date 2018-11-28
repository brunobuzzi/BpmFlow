process
renderGatewayDefinition: artifactDefinition on: html

	html div 
		with:
			[html output: artifactDefinition printInArtifacts].
			html div with: [html strong with: [html output: '<', artifactDefinition name, '>']].
			html div with:[html output: artifactDefinition printOutArtifacts].