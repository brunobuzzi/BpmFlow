render
renderCompleteItemOn: html

	selectedLateralItem ifNil: [^self].

	calendarComposite model: selectedLateralItem.
	
	html div id: 'item-customized-component'; class: 'margin-top-10px ';
		with: [self renderItemComponentOn: html.].