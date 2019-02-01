other
renderDeleteChartIconOn: html
   | jQueryId |

	jQueryId := self renderJQueryConfirmationDialogOn: html title: ('Delete Chart' translateIn: self session) forActionNamed: 'deleteChart' actionMethod: #deleteChart.

	html div class: 'float-right'; with: [
		html anchor 
					class: 'cursor-pointer';
					onClick: (html jQuery id: jQueryId) dialog open;
						with: [html image url: (SEWAFIconLibrary / #chartbardelete24Png); 
												title: ('Delete Chart' translateIn: self session); 
												altText: ('Delete Chart' translateIn: self session) ]
	]