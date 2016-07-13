process
renderSelectedTransitionOn: html

	selectedObject ifNil: [^self].

	html div class: 'transition-def-artifact'; with: [self renderArtifactPreviousFieldOf: selectedObject startArtifact on: html].

	selectedObject hasCondition ifTrue: [html div class: 'transition-condition'; with: [self renderConditionOn: html]].

	html div class: 'transition-def-artifact'; with: [self renderArtifactPreviousFieldOf: selectedObject endArtifact on: html].