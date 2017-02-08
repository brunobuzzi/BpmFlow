other
renderItemComponentOn: html

	selectedLateralItem ifNil: [^self].

	(selectedLateralItem name = 'Default') ifFalse: [self renderDeleteCalendarOn: html]. "Default calendar can not be removed"

	html div with: [
		html div with: [self renderCalendarOperationsOn: html].
		html div with: [self renderCalendarDaysOn: html].
	].