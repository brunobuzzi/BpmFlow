other
renderCompleteItemOn: html

	selectedLateralItem ifNil: [^self].

	html div id: 'item-customized-component'; class: 'margin-top-10px ';
		with: [self renderItemComponentOn: html.].