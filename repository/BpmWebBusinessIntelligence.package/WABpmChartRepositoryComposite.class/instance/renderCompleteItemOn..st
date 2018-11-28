subclass responsibility
renderCompleteItemOn: html

	selectedLateralItem ifNil: [^self].

	html div id: 'item-complete-description'; class: 'lateral-right-component-description';
		with: [self renderItemDescriptionOn: html.].

	html horizontalRule.

	html div id: 'item-customized-component'; class: 'margin-left-2px'; 
		with: [self renderItemComponentOn: html.].