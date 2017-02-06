other
getCalendarNamedOrDefault: aString

	^self cache at: aString ifPresent: [:value | value] ifAbsent: [self default]