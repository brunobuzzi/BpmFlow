*orbeonBPMCore
countMinutes: minutesCount withCalendar: calendarName
	"Answer <aTimeStamp> counting minutes from receiver's value to <minutesCount> using calendar named <calendarName>.
	This method is used by BPMTimers when <BPMCalendars> are required"

	^(BpmExpectedExecutionInMinutes value: minutesCount withCalendarNamed: 'Default') getDueDateFrom: self