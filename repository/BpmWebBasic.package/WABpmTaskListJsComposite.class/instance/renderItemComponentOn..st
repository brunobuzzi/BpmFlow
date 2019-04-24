render transitions
renderItemComponentOn: html

	assignationComposite 
		ifNotNil: [html render: assignationComposite]
		ifNil: [
			html script: self jsCurrentExpandCollapse, '; ',  self jsExpandCollapse, ';', self jsSetExpandCollapseIconProperties.
			"html script: self javaScriptExpandCollapse."
			self getAllTasks do:[:eachArtifact | | cssClass |
				cssClass := eachArtifact isTask 
					ifFalse: ['process-transition-gateway']
					ifTrue: [eachArtifact isDone
						ifTrue: ['process-transition-finished']
						ifFalse: ['process-transition-running']].
				html div 
					id: ('t',eachArtifact id printString);
					class: cssClass;
					with: [self renderTransitionDataOn: html for: eachArtifact].
				html script: 'currentExpandCollapse(''t',eachArtifact id printString,''')'. "<div> does not support onload event --> a script with a call after the element must be added"
			]. 
		].