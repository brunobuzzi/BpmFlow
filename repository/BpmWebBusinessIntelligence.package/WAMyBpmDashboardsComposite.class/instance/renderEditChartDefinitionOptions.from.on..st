chart actions
renderEditChartDefinitionOptions: aBpmDashboardChartDefinition from: aBpmDashboardInstance on: html
   | jQueryId |

	jQueryId := self renderJQueryConfirmationDialogOn: html forActionNamed: 'editChartDefinition' actionMethod: #editChardDefinition.

	html div class: 'float-right margin-left-5px'; style: 'height: 10%'; with: [
		html anchor 
					class: 'cursor-pointer';
					onClick: (html jQuery id: jQueryId) dialog open;
						with: [html image url: (SEWAFIconLibrary / #actionsdocumentedit16Png); 
												title: ('Edit Chart' translateIn: self session); 
												altText: ('Edit Chart' translateIn: self session) ]
	]