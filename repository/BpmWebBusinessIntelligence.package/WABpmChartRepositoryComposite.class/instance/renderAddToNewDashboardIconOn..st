dashboard
renderAddToNewDashboardIconOn: html
   | jQueryId |

	jQueryId := self renderJQueryPopupCompositeOn: html width: 350 height: 480 composite: WANewDashboardPopupComponent title: 'Add to Dashboard' domainObject: nil arguments: #().

	html div class: 'float-right'; with: [
		html anchor 
					class: 'cursor-pointer';
					onClick: (html jQuery id: jQueryId) dialog open;
						with: [html image url: (SEWAFIconLibrary / #dashboardnew24Png); 
												title: ('Add to New Dashboard' translateIn: self session); 
												altText: ('Add to New Dashboard' translateIn: self session) ]
	]