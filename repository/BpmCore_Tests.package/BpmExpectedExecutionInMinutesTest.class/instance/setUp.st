other
setUp
	| calendar |

	super setUp.

	expectedTime := BpmExpectedExecutionInMinutes new.

	calendar := BpmExceptionCalendar addDefaultCalendarIn: (BpmEnvironment newNamed: 'Test').
	expectedTime calendar: calendar.

	calendar addExceptionTimeFrom: (Time fromString: '00:00') to: (Time fromString: '07:59').
	calendar addExceptionTimeFrom: (Time fromString: '18:01') to: (Time fromString: '23:59').