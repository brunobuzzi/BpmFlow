sub components
showGrantedTasks

	(arena isKindOf: WAOrbeonGrantedTransitionManager)
	ifTrue: [^arena].

	^WAOrbeonGrantedTransitionManager parent: self