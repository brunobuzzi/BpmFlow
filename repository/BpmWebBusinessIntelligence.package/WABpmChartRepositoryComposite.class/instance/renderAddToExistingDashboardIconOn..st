dashboard
renderAddToExistingDashboardIconOn: html
   | jQueryId |

	jQueryId := self renderJQueryPopupCompositeOn: html width: 350 height: 350 composite: WASelectDashboardPopupComponent title: 'Add to Dashboard' domainObject: nil arguments: #().

	html div class: 'float-right'; with: [
		html anchor 
					class: 'cursor-pointer';
					onClick: (html jQuery id: jQueryId) dialog open;
						with: [html image url: (SEWAFIconLibrary / #dashboard24Png); 
												title: ('Add to Existing Dashboard' translateIn: self session); 
												altText: ('Add to Existing Dashboard' translateIn: self session) ]
	]