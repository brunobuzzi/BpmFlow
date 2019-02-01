other
renderViewDashboardItem: aBpmDashboardInstance on: html
   | jQueryId |

	jQueryId := self renderJQueryPopupCompositeOn: html width: 300 height: 350 composite: WAViewDashboardItemPopupComponent title: 'View Dashboard Item' domainObject: aBpmDashboardInstance
	 arguments: #().

	html div class: 'float-right margin-left-5px'; with: [
		html anchor 
					class: 'cursor-pointer';
					onClick: (html jQuery id: jQueryId) dialog open;
						with: [html image url: (SEWAFIconLibrary / #dataviewdetails16Png); 
												title: ('View Dashboard Item' translateIn: self session); 
												altText: ('View Dashboard Item' translateIn: self session) ]
	]