subcomponents
openLanguageConfiguration

	(arena isKindOf: WASetBkUserLanguage)
	ifTrue: [^arena].

	^WASetBkUserLanguage parent: self