other
addSelectedDay

	(self componentValueAt: 'startDate') ifNil: [^self].

	model addExceptionDay: (Date fromString: (self componentValueAt: 'startDate'))