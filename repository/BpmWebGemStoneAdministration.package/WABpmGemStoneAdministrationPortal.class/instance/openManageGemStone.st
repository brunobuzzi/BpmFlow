other
openManageGemStone

	(arena isKindOf: WABpmBackupDatabase)
	ifTrue: [^arena].

	^(WABpmBackupDatabase parent: self)
		yourself