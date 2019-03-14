other
renderContentOn: html
	| heightClass |

	html div id: 'item-complete-description'; class: 'lateral-right-component-description';
		with: [self renderItemDescriptionOn: html.].

	html horizontalRule.

	(self componentValueAt: 'view.svg.map' ifAbsent: [false]) ifTrue: [^self renderSvgProcessMapOn: html].

	heightClass := self portalComponent showMainMenu 
							ifFalse: ['item-customized-component-hide-top'] 
							ifTrue: ['item-customized-component-show-top'].

	html div id: 'item-customized-component'; class: heightClass; 
		with: [self renderItemComponentOn: html.].