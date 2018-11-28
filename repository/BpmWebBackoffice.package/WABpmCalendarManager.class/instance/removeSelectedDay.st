other
removeSelectedDay

	(self componentValueAt: 'startDate') ifNil: [^self].

	selectedLateralItem removeExceptionDay: (Date fromString: (self componentValueAt: 'startDate'))