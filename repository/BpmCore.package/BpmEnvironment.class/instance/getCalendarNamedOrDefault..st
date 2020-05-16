calendars
getCalendarNamedOrDefault: aString

	^exceptionCalendars detect: [:each | each name = aString] ifNone: [self defaultCalendar]