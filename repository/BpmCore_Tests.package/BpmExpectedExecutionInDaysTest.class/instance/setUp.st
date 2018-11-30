other
setUp
	| calendar |

	super setUp.

	expectedTime := BpmExpectedExecutionInDays new.

	calendar := BpmExceptionCalendar addDefaultCalendarIn: (BpmEnvironment newNamed: 'Test').
	expectedTime calendar: calendar.

	calendar 
		addExceptionDay: (Date fromString: '01/01/2017');
		addExceptionDay: (Date fromString: '01/02/2017');
		addExceptionDay: (Date fromString: '02/02/2017');
		addExceptionDay: (Date fromString: '03/01/2017');
		addExceptionDay: (Date fromString: '03/03/2017');
		addExceptionDay: (Date fromString: '04/04/2017');
		addExceptionDay: (Date fromString: '05/05/2017');
		addExceptionDay: (Date fromString: '06/06/2017');
		addExceptionDay: (Date fromString: '07/07/2017');
		addExceptionDay: (Date fromString: '08/08/2017');
		addExceptionDay: (Date fromString: '09/09/2017');
		addExceptionDay: (Date fromString: '10/10/2017');
		addExceptionDay: (Date fromString: '11/11/2017');
		addExceptionDay: (Date fromString: '12/12/2017').