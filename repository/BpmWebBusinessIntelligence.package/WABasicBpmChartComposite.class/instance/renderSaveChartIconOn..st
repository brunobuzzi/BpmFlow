search area
renderSaveChartIconOn: html
   | jQueryId |

	jQueryId := self renderJQueryConfirmationDialogOn: html title: ('Save Chart' translateIn: self session) forActionNamed: 'saveChart' actionMethod: #saveChart.

	html div class: 'float-right'; with: [
		html anchor 
					class: 'cursor-pointer';
					onClick: (html jQuery id: jQueryId) dialog open;
						with: [html image url: (SEWAFIconLibrary / #chartbaradd24Png); 
												title: ('Save Chart' translateIn: self session); 
												altText: ('Save Chart' translateIn: self session) ]
	]