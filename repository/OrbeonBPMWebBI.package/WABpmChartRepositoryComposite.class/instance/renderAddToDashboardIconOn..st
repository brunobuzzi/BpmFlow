dashboard
renderAddToDashboardIconOn: html
   | jQueryId |

	jQueryId := self renderJQueryPopupCompositeOn: html width: 350 height: 350 composite: WANewDashboardPopupComponent title: 'Add to Dashboard' domainObject: nil arguments: #().

	html div class: 'float-right'; with: [
		html anchor 
					class: 'cursor-pointer';
					onClick: (html jQuery id: jQueryId) dialog open;
						with: [html image url: (SEWAFIconLibrary / #dashboard24Png); 
												title: ('Add to Dashboard' translateFor: self session user); 
												altText: ('Add to Dashboard' translateFor: self session user) ]
	]