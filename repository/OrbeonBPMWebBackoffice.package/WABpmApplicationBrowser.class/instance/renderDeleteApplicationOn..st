other
renderDeleteApplicationOn: html
   | jQueryId |

	jQueryId := self renderJQueryConfirmationDialogOn: html forActionNamed: 'removeApp' actionMethod: #removeApplication.

	html div class: 'float-left margin-left-5px'; with: [
		html anchor 
					class: 'cursor-pointer';
					onClick: (html jQuery id: jQueryId) dialog open;
						with: [html image url: (SEWAFIconLibrary / #remove24Png); 
												title: ('Remove Application' translateFor: self session user); 
												altText: ('Remove Application' translateFor: self session user) ]
	]