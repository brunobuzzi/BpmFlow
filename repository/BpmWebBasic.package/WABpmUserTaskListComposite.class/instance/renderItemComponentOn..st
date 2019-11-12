other
renderItemComponentOn: html

	assignationComposite 
		ifNotNil: [html render: assignationComposite]
		ifNil: [
			"html script: self jsCurrentExpandCollapse, '; ',  self jsExpandCollapse, ';', self jsSetExpandCollapseIconProperties."
			self getAllTasks do:[:eachArtifact | | cssClass jsEcObject |
				cssClass := eachArtifact isTask 
					ifFalse: ['process-transition-gateway']
					ifTrue: [eachArtifact isDone
						ifTrue: [(eachArtifact == model task) ifFalse: ['process-transition-finished'] ifTrue: ['process-transition-finished process-transition-selected']]
						ifFalse: ['process-transition-running']].
				jsEcObject := self createEcTaskJsObjectFor: ('t',eachArtifact id printString) imageId: ('i',eachArtifact id printString).
				jsEcObject callInitIconFunction; callInitElementFunction.
				html div 
					id: ('t',eachArtifact id printString);
					class: cssClass;
					with: [self renderTransitionDataOn: html for: eachArtifact].
				"html script: 'currentExpandCollapseTask(''t',eachArtifact id printString,''')'."
				html script: jsEcObject.
			]. 
		].