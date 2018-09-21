other
renderEditDashboardIconOn: html
   | jQueryId |

	jQueryId := self renderJQueryPopupCompositeOn: html width: 350 height: 350 composite: WANewDashboardPopupComponent title: 'Edit Dashboard' domainObject: selectedLateralItem
	 arguments: #().

	html div class: 'float-right margin-left-5px'; with: [
		html anchor 
					class: 'cursor-pointer';
					onClick: (html jQuery id: jQueryId) dialog open;
						with: [html image url: (SEWAFIconLibrary / #actionsdocumentedit24Png); 
												title: ('Edit Dashboard' translateFor: self session user); 
												altText: ('Edit Dashboard' translateFor: self session user) ]
	]