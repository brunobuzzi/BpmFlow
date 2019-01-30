*bpmwebbasic
showInternalInbox

	(arena isKindOf: WABpmInternalInbox)
	ifTrue: [^arena].

	^WABpmInternalInbox parent: self