other
setTransitionsHeight

	transitionsHeight := Dictionary new.

	selectedLateralItem ifNil: [^transitionsHeight].

	selectedLateralItem getAllArtifacts do: [:each | 
		self session user transitionDisplayModeIsExpanded
		ifTrue: [transitionsHeight at: each put: #expanded]
		ifFalse: [transitionsHeight at: each put: #collapsed]].

	^transitionsHeight