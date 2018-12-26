render
renderCompleteItemOn: html

	selectedLateralItem ifNil: [^calendarComposite := nil.].

	calendarComposite := WABpmCalendarComposite on: selectedLateralItem.
	
	html div id: 'item-customized-component'; class: 'margin-top-10px ';
		with: [self renderItemComponentOn: html.].