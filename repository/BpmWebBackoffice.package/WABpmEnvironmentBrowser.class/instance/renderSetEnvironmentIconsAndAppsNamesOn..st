other
renderSetEnvironmentIconsAndAppsNamesOn: html
   | jQueryId |

	jQueryId := self renderJQueryPopupCompositeOn: html width: 450 height: 520 composite: WASetEnvIconsAndNamesPopupComponent title: 'Set Environment Options' domainObject: nil arguments: #().

	html div class: 'float-right margin-left-5px'; with: [
		html anchor 
					class: 'cursor-pointer';
					onClick: (html jQuery id: jQueryId) dialog open;
						with: [html image url: (SEWAFIconLibrary / #appspreferencessystemwindowsactions24Png); 
												title: ('Set Icons and Names' translateFor: self session user); 
												altText: ('Set Icons and Names' translateFor: self session user) ]
	]