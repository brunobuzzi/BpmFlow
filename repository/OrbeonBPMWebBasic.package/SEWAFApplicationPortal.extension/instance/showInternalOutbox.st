*orbeonBPMWebBasic
showInternalOutbox

	(arena isKindOf: WABpmInternalOutbox)
	ifTrue: [^arena].

	^WABpmInternalOutbox parent: self