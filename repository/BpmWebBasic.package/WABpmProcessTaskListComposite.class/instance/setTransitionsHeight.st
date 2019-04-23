render transitions
setTransitionsHeight

	transitionsHeight := Dictionary new.

	self getAllTasks do: [:each | 
		self session user transitionDisplayModeIsExpanded
		ifTrue: [transitionsHeight at: each put: #expanded]
		ifFalse: [transitionsHeight at: each put: #collapsed]].

	^transitionsHeight