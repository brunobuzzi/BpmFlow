sub components
showGrantedTasks

	(arena isKindOf: WAGrantedBpmTransitions)
	ifTrue: [^arena].

	^WAGrantedBpmTransitions parent: self