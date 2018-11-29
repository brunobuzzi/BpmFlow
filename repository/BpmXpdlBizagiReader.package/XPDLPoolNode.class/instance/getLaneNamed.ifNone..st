searching
getLaneNamed: aString ifNone: aBlock

	^lanes at: aString ifPresent: [:value | value] ifAbsent: aBlock