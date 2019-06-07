chart actions
renderRemoveChartDefinition: aBpmDashboardChartDefinition from: aBpmDashboardInstance on: html
   | jQueryId |

	jQueryId := self renderJQueryConfirmationDialogOn: html forActionNamed: 'removeChartDefinition' actionMethod: #removeChardDefinition:from: arguments: (Array with: aBpmDashboardChartDefinition with: aBpmDashboardInstance).

	html div class: 'float-right margin-left-5px'; style: 'height: 10%'; with: [
		html anchor 
					class: 'cursor-pointer';
					onClick: (html jQuery id: jQueryId) dialog open;
						with: [html image url: (SEWAFIconLibrary / #delete16Png); 
												title: ('Remove Chart' translateIn: self session); 
												altText: ('Remove Chart' translateIn: self session) ]
	]