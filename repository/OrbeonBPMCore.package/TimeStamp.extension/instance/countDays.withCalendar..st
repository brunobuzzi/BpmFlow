*orbeonBPMCore
countDays: daysCount withCalendar: calendarName
	"Answer <aTimeStamp> counting days from receiver's value to <daysCount> using calendar named <calendarName>.
	This method is used by BPMTimers when <BPMCalendars> are required"

	^(BpmExpectedExecutionInDays value: daysCount withCalendarNamed: 'Default') getDueDateFrom: self