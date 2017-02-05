other
addCalendar: aBpmExceptionCalendar named: aString

	(aString = 'Default') ifTrue: [^self default].

	^self cache at: aString put: aBpmExceptionCalendar