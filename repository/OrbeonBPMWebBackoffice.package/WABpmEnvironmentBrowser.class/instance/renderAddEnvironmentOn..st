other
renderAddEnvironmentOn: html
   | jQueryId |

	jQueryId := self renderJQueryPopupCompositeOn: html width: 350 height: 200 composite: WANewEnvironmentPopupComponent title: 'Create Environment' domainObject: nil arguments: #().

	html div class: 'float-right margin-left-5px'; with: [
		html anchor 
					class: 'cursor-pointer';
					onClick: (html jQuery id: jQueryId) dialog open;
						with: [html image url: (SEWAFIconLibrary / #add24Png); 
												title: ('Add Environment' translateFor: self session user); 
												altText: ('Add Environment' translateFor: self session user) ]
	]