other
addRemoveDay: date

	(selectedLateralItem isExceptionDay: date)
	ifTrue: [selectedLateralItem removeExceptionDay: date]
	ifFalse: [selectedLateralItem	addExceptionDay: date ]