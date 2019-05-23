other
finalizedDate

	^self endEventsAsOrderedCollection ifEmpty: [nil] ifNotEmpty: [:collection | collection first creationTime]