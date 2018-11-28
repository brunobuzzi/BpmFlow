search area
renderSaveChartIconOn: html
   | jQueryId |

	jQueryId := self renderJQueryConfirmationDialogOn: html title: ('Save Chart' translateFor: self session user) forActionNamed: 'saveChart' actionMethod: #saveChart.

	html div class: 'float-right'; with: [
		html anchor 
					class: 'cursor-pointer';
					onClick: (html jQuery id: jQueryId) dialog open;
						with: [html image url: (SEWAFIconLibrary / #chartbaradd24Png); 
												title: ('Save Chart' translateFor: self session user); 
												altText: ('Save Chart' translateFor: self session user) ]
	]