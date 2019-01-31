sub components
openTimerEventBrowser

	(arena isKindOf: WABpmTimerEventBrowser)
	ifTrue: [^arena].

	^WABpmTimerEventBrowser parent: self