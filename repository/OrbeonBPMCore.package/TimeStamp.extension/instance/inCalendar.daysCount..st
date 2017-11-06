*orbeonBPMCore
inCalendar: calendarName daysCount: daysCount

	^(BpmExpectedExecutionInDays value: daysCount withCalendarNamed: 'Default') getDueDateFrom: self