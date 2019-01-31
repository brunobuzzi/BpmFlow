subcomponents
openInternationalizationManager

	(arena isKindOf: WAInternationalizationManager)
	ifTrue: [^arena].

	^WAInternationalizationManager parent: self