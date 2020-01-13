other
renderAddCalendarOn: html
   | jQueryId |

	jQueryId := self renderJQueryPromptDialogOn: html title: 'Calendar' information: 'Add New Calendar' prompt: 'Calendar Name' buttonLabel: 'Add' forActionNamed: #addCalendar  arguments: #().

	html div class: 'float-right margin-left-5px margin-right-5px'; with: [
		html anchor 
					class: 'cursor-pointer';
					onClick: (html jQuery id: jQueryId) dialog open;
						with: [html image url: (SEWAFIconLibrary / #add24Png); 
												title: ('Add Calendar' translateIn: self session); 
												altText: ('Add Calendar' translateIn: self session) ]
	]