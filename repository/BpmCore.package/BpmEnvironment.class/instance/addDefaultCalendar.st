calendars
addDefaultCalendar
	| calendar |

	calendar := BpmExceptionCalendar new.

	calendar name: 'Default';
		bpmEnvironment: self;
		addAllWeekEndsOf: Date today year.

	^self addCalendar: calendar