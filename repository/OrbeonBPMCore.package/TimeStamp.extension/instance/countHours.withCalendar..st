*orbeonBPMCore
countHours: hoursCount withCalendar: calendarName
	"Answer <aTimeStamp> counting hours from receiver's value to <hoursCount> using calendar named <calendarName>.
	This method is used by BPMTimers when <BPMCalendars> are required"

	^(BpmExpectedExecutionInHours value: hoursCount withCalendarNamed: 'Default') getDueDateFrom: self