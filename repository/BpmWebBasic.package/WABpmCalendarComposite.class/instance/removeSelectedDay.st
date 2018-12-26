other
removeSelectedDay

	(self componentValueAt: 'startDate') ifNil: [^self].

	model removeExceptionDay: (Date fromString: (self componentValueAt: 'startDate'))