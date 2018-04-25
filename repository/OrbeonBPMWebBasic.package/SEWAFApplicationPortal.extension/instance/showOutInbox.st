*orbeonBPMWebBasic
showOutInbox

	(arena isKindOf: WABpmInternalOutbox)
	ifTrue: [^arena].

	^WABpmInternalOutbox parent: self