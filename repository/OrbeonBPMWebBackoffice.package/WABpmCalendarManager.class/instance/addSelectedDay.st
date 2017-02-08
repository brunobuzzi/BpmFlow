other
addSelectedDay

	(self componentValueAt: 'startDate') ifNil: [^self].

	selectedLateralItem addExceptionDay: (Date fromString: (self componentValueAt: 'startDate'))