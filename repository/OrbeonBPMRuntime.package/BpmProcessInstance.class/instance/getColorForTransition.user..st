other
getColorForTransition: xpdlTransitionNode user: aBpmUser

	^(transitions anySatisfy: [:each | each startArtifactName = xpdlTransitionNode startNodeName and: [each endArtifactName = xpdlTransitionNode endNodeName]]) 
		ifTrue: [aBpmUser getProperty: 'svg.transition.borderColor.done'] 
		ifFalse: [aBpmUser getProperty: 'svg.transition.borderColor.pending']