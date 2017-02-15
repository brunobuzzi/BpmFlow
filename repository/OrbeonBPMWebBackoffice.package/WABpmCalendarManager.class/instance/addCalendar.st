other
addCalendar
	| calendarName |

	calendarName := self componentValueAt: 'prompt' ifAbsent: [^self].

	(BpmExceptionCalendar new name: calendarName) addToCache.