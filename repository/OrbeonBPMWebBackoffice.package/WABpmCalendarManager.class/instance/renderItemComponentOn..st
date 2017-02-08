other
renderItemComponentOn: html

	selectedLateralItem ifNil: [^self].

	self renderDeleteCalendarOn: html.