subcomponents
openLanguageConfiguration

	(arena isKindOf: WASetUserLanguage)
	ifTrue: [^arena].

	^WASetUserLanguage parent: self