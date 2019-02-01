other
renderRemoveDashboardIconOn: html
   | jQueryId |

	jQueryId := self renderJQueryConfirmationDialogOn: html forActionNamed: 'removeDashboard' actionMethod: #removeDashboard.

	html div class: 'float-right margin-left-5px'; with: [
		html anchor 
					class: 'cursor-pointer';
					onClick: (html jQuery id: jQueryId) dialog open;
						with: [html image url: (SEWAFIconLibrary / #remove24Png); 
												title: ('Remove Dashboard' translateIn: self session); 
												altText: ('Remove Dashboard' translateIn: self session) ]
	]