other
openRepositoryStatistics

	(arena isKindOf: WABpmBackupDatabase)
	ifTrue: [^arena].

	^(WABpmBackupDatabase parent: self)
		yourself