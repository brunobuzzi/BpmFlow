other
addCalendar
	| calendarName newCalendar |

	calendarName := self componentValueAt: 'prompt' ifAbsent: [^self].

	newCalendar := BpmExceptionCalendar new name: calendarName.
	newCalendar 
		bpmEnvironment: self session bpmEnvironment;
		addToCache