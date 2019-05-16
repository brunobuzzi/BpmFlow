delete process
renderDeleteProcessDefintionOn: html
   | jQueryId |

	jQueryId := self renderJQueryConfirmationDialogOn: html forActionNamed: 'removeDefinition' actionMethod: #removeProcessDefinition.

	html div class: 'margin-left-5px'; with: [
		html anchor 
					class: 'cursor-pointer';
					onClick: (html jQuery id: jQueryId) dialog open;
						with: [html image url: (SEWAFIconLibrary / #remove24Png); 
												title: ('Remove Process Definition' translateIn: self session); 
												altText: ('Remove Process Definition' translateIn: self session) ]
	]