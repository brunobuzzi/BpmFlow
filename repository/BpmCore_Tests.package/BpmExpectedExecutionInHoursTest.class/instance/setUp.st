other
setUp
	| calendar |

	super setUp.

	expectedTime := BpmExpectedExecutionInHours new.

	calendar := (self defaultEnvironmentClass newNamed: 'Test') addDefaultCalendar.
	expectedTime calendar: calendar.

	calendar addExceptionTimeFrom: (Time fromString: '00:00') to: (Time fromString: '07:59').
	calendar addExceptionTimeFrom: (Time fromString: '18:01') to: (Time fromString: '23:59').