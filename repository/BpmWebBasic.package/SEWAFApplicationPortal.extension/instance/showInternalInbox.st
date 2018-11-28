*bpmwebbasic-as yet unclassified
showInternalInbox

	(arena isKindOf: WABpmInternalInbox)
	ifTrue: [^arena].

	^WABpmInternalInbox parent: self