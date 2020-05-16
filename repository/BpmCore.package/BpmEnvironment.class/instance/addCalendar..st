calendars
addCalendar: aBpmExceptionCalendar

	^exceptionCalendars
		detect: [:each | each name = aBpmExceptionCalendar name] 
		ifNone: [aBpmExceptionCalendar bpmEnvironment: self.
					exceptionCalendars add: aBpmExceptionCalendar]