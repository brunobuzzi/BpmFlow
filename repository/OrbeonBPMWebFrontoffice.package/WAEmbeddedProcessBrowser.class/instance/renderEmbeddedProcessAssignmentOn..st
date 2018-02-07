other
renderEmbeddedProcessAssignmentOn: html

	selectedLateralItem ifNil: [^self].

	html div id: 'process-assignment-description'; 
		with: [self renderItemDescriptionOn: html.].

	html horizontalRule.