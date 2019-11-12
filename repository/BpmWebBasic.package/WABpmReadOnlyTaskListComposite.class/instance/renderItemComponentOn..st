other
renderItemComponentOn: html

	"html script: self jsCurrentExpandCollapse, '; ',  self jsExpandCollapse, ';', self jsSetExpandCollapseIconProperties."
	self getAllTasks do:[:eachArtifact | | cssClass jsEcObject |
		cssClass := eachArtifact isTask 
			ifFalse: ['process-transition-gateway']
			ifTrue: [eachArtifact isDone
				ifTrue: ['process-transition-finished']
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