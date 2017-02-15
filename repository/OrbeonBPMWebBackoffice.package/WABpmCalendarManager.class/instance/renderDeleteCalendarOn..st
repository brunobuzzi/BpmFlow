other
renderDeleteCalendarOn: html
   | jQueryId |

	jQueryId := self renderJQueryConfirmationDialogOn: html forActionNamed: 'removeCalendar' actionMethod: #removeCalendar.

	html div class: 'float-right margin-left-5px'; with: [
		html anchor 
					class: 'cursor-pointer';
					onClick: (html jQuery id: jQueryId) dialog open;
						with: [html image url: (SEWAFIconLibrary / #remove24Png); 
												title: ('Remove Calendar' translateFor: self session user); 
												altText: ('Remove Calendar' translateFor: self session user) ]
	]