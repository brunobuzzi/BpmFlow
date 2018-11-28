other
renderRefreshDashboardIconOn: html
   | jQueryId |

	jQueryId := self renderJQueryConfirmationDialogOn: html title: ('Refresh Dashbord' translateFor: self session user) forActionNamed: 'refreshDashboard' actionMethod: #refreshDashboard.

	html div class: 'float-right margin-left-5px'; with: [
		html anchor 
					class: 'cursor-pointer';
					onClick: (html jQuery id: jQueryId) dialog open;
						with: [html image url: (SEWAFIconLibrary / #refresh224Png); 
												title: ('Refresh Dashboard' translateFor: self session user); 
												altText: ('Refresh Dashboard' translateFor: self session user) ]
	]