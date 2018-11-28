process
renderCompleteItemOn: html
	| heightClass |

	selectedLateralItem ifNil: [^self].

	html div id: 'item-complete-description'; class: 'lateral-right-component-description';
		with: [self renderItemDescriptionOn: html.].

	html horizontalRule.

	heightClass := mainPanel showMainMenu 
							ifFalse: ['item-customized-component-hide-top'] 
							ifTrue: ['item-customized-component-show-top'].

	html div id: 'item-customized-component'; class: heightClass; 
		with: [self renderItemComponentOn: html.].