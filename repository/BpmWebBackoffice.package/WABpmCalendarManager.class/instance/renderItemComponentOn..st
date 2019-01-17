render
renderItemComponentOn: html

	selectedLateralItem ifNil: [^self].

	html render: calendarComposite