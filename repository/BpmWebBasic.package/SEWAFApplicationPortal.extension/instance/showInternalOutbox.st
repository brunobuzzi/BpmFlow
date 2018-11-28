*bpmwebbasic-as yet unclassified
showInternalOutbox

	(arena isKindOf: WABpmInternalOutbox)
	ifTrue: [^arena].

	^WABpmInternalOutbox parent: self