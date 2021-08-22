other
switchTransitionDisplayMode

	initialTransitionDisplayMode := (initialTransitionDisplayMode = #expanded) ifTrue: [#collapsed] ifFalse: [#expanded].