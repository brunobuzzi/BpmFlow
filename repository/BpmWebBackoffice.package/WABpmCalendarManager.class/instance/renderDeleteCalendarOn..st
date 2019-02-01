render
renderDeleteCalendarOn: html
   | jQueryId |

	jQueryId := self renderJQueryConfirmationDialogOn: html forActionNamed: 'removeCalendar' actionMethod: #removeCalendar.

	html div class: 'float-right margin-left-5px'; with: [
		html anchor 
					class: 'cursor-pointer';
					onClick: (html jQuery id: jQueryId) dialog open;
						with: [html image url: (SEWAFIconLibrary / #remove24Png); 
												title: ('Remove Calendar' translateIn: self session); 
												altText: ('Remove Calendar' translateIn: self session) ]
	]