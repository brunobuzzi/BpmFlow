other
renderRefreshDashboardIconOn: html
   | jQueryId |

	jQueryId := self renderJQueryConfirmationDialogOn: html title: ('Refresh Dashbord' translateIn: self session) forActionNamed: 'refreshDashboard' actionMethod: #refreshDashboard.

	html div class: 'float-right margin-left-5px'; with: [
		html anchor 
					class: 'cursor-pointer';
					onClick: (html jQuery id: jQueryId) dialog open;
						with: [html image url: (SEWAFIconLibrary / #refresh224Png); 
												title: ('Refresh Dashboard' translateIn: self session); 
												altText: ('Refresh Dashboard' translateIn: self session) ]
	]