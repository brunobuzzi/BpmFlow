other
addRemoveDay: date

	(model isExceptionDay: date)
	ifTrue: [model removeExceptionDay: date]
	ifFalse: [model	addExceptionDay: date ]