other
addDefaultCalendar
	| defaultCalendar |

	defaultCalendar := self newExceptWeekEnds.
	defaultCalendar name: 'Default'.

	^self cache at: 'Default' put: defaultCalendar