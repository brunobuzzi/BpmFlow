process
renderTransitionOn: html forTransition: transitionDefinition

	html anchor class: 'no-underline';
		callback: [self onTransitionSelected: transitionDefinition]; 
		with: [(transitionDefinition == selectedObject) 
					ifFalse: [html output: transitionDefinition printData] 
					ifTrue: [html strong with: [html output: transitionDefinition printData]]].