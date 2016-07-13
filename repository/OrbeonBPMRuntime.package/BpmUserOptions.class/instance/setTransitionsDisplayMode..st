other
setTransitionsDisplayMode: aBoolean

	aBoolean ifTrue: [^initialTransitionDisplayMode := #expanded].

	initialTransitionDisplayMode := #collapsed.