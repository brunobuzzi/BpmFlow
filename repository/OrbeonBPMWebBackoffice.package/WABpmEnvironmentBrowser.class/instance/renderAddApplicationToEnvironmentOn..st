other
renderAddApplicationToEnvironmentOn: html
   | jQueryId |

	jQueryId := self renderJQueryPopupCompositeOn: html width: 350 height: 500 composite: WAAddApplicationToEnvironmentPopupComponent title: 'Add Application to Environment' domainObject: nil arguments: #().

	html div class: 'float-right margin-left-5px'; with: [
		html anchor 
					class: 'cursor-pointer';
					onClick: (html jQuery id: jQueryId) dialog open;
						with: [html image url: (SEWAFIconLibrary / #add24Png); 
												title: ('Add Application to Environment' translateFor: self session user); 
												altText: ('Add Application to Environment' translateFor: self session user) ]
	]