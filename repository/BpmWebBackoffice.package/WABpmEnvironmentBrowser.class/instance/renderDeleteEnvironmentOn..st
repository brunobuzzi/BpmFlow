other
renderDeleteEnvironmentOn: html
   | jQueryId |

	jQueryId := self renderJQueryConfirmationDialogOn: html forActionNamed: 'removeEnv' actionMethod: #removeEnvironment.

	html div class: 'float-right margin-left-5px'; with: [
		html anchor 
					class: 'cursor-pointer';
					onClick: (html jQuery id: jQueryId) dialog open;
						with: [html image url: (SEWAFIconLibrary / #remove24Png); 
												title: ('Remove Environment' translateFor: self session user); 
												altText: ('Remove Environment' translateFor: self session user) ]
	]