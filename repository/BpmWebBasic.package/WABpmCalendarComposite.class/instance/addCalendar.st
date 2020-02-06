other
addCalendar
	| calendarName newCalendar |

	calendarName := self componentValueAt: 'prompt' ifAbsent: [^self].

	newCalendar := BpmExceptionCalendar new name: calendarName.

	self session bpmEnvironment addCalendar: newCalendar