*orbeonBPMCore
inCalendar: calendarName hoursCount: daysCount

	^(BpmExpectedExecutionInHours value: daysCount withCalendarNamed: 'Default') getDueDateFrom: self