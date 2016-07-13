subcomponents
openServerSetup

	(arena isKindOf: WAServerConfigurationManager)
	ifTrue: [^arena].

	^(WAServerConfigurationManager parent: self)
		yourself