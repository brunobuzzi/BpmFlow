other
addDefaultCalendarIn: aBpmEnviroment
	| defaultCalendar |

	defaultCalendar := self newExceptWeekEnds.
	defaultCalendar name: 'Default';
		bpmEnvironment: aBpmEnviroment.

	^self addCalendar: defaultCalendar