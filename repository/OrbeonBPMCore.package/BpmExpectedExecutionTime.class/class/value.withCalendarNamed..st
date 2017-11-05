other
value: value withCalendarNamed: aString

	^self value: value withCalendar: (BpmExceptionCalendar getCalendarNamedOrDefault: aString)