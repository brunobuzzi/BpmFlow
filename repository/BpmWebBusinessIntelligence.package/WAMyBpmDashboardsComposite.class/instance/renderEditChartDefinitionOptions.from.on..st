chart actions
renderEditChartDefinitionOptions: aBpmDashboardChartDefinition from: aBpmDashboardInstance on: html
   | jQueryId |

	jQueryId := self renderJQueryPopupCompositeOn: html width: 350 height: 254 composite: WAEditChartOptionsPopupComponent title: 'Edit Chart Options' domainObject: aBpmDashboardChartDefinition
	 arguments: #().

	html div class: 'float-right margin-left-5px'; with: [
		html anchor 
					class: 'cursor-pointer';
					onClick: (html jQuery id: jQueryId) dialog open;
						with: [html image url: (SEWAFIconLibrary / #pencil16Png); 
												title: ('Edit Chart Options' translateIn: self session); 
												altText: ('Edit Chart Options' translateIn: self session) ]
	]