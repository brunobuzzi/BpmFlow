subclass responsibility
renderDeleteChartIconOn: html
   | jQueryId |

	jQueryId := self renderJQueryConfirmationDialogOn: html title: ('Delete Chart' translateFor: self session user) forActionNamed: 'deleteChart' actionMethod: #deleteChart.

	html div class: 'float-right'; with: [
		html anchor 
					class: 'cursor-pointer';
					onClick: (html jQuery id: jQueryId) dialog open;
						with: [html image url: (SEWAFIconLibrary / #chartbardelete24Png); 
												title: ('Delete Chart' translateFor: self session user); 
												altText: ('Delete Chart' translateFor: self session user) ]
	]