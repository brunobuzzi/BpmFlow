render transitions
renderItemComponentOn: html
	| heightClass |

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

				heightClass := ((transitionsHeight at: eachArtifact ifAbsent: [#expanded]) = #expanded) 
										ifTrue: ['process-transition-expanded'] 
										ifFalse: ['process-transition-collapsed'].
				html div 
					id: ('t',eachArtifact id printString);
					class: cssClass;
					with: [self renderTransitionDataOn: html for: eachArtifact].
				html script: 'currentExpandCollapse(''t',eachArtifact id printString,''')'. "<div> does not support onload event --> a script with a call after the element must be added"
			]. 
		].