process
renderSubprocessDefinition: artifactDefinition on: html

	html div with: [html strong with: [html output: artifactDefinition name]].

	html anchor 
		class: 'no-underline';
		callback: [self onSubProcessSelected: artifactDefinition]; 
		with: [html output: '@', artifactDefinition name]