other
renderItemComponentOn: html

	selectedLateralItem ifNil: [^self].

	(selectedLateralItem name = 'Default') ifFalse: [self renderDeleteCalendarOn: html]. "Default calendar can not be removed"