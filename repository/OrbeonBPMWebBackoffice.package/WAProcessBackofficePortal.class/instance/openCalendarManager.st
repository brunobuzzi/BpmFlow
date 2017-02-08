subcomponents
openCalendarManager

	(arena isKindOf: WABpmCalendarManager)
	ifTrue: [^arena].

	^WABpmCalendarManager parent: self