other
renderSelectDashboardInstanceIconOn: html
   | jQueryId |

	jQueryId := self renderJQueryPopupCompositeOn: html width: 350 height: 350 composite: WANewDashboardPopupComponent title: 'Select Dashboard Instance' domainObject: selectedLateralItem
	 arguments: #().

	html div class: 'float-right margin-left-5px'; with: [
		html anchor 
					class: 'cursor-pointer';
					onClick: (html jQuery id: jQueryId) dialog open;
						with: [html image url: (SEWAFIconLibrary / #actionsviewlistdetails24Png); 
												title: ('Select Dashboard Instance' translateFor: self session user); 
												altText: ('Select Dashboard Instance' translateFor: self session user) ]
	]