calendars
removeCalendar: aBpmExceptionCalendar

	(aBpmExceptionCalendar name = 'Default') ifTrue: [^ImproperBpmOperationException signal: 'Default calendar can not be removed from its Environment' ].
 
	^exceptionCalendars remove: aBpmExceptionCalendar ifAbsent: []