other
renderAddEnvironmentOn: html
   | jQueryId |

	jQueryId := self renderJQueryPopupCompositeOn: html width: 300 height: 250 composite: WANewEnvironmentPopupComponent title: 'Create Environment' domainObject: nil arguments: #().

	html div class: 'float-right margin-left-5px'; with: [
		html anchor 
					class: 'cursor-pointer';
					onClick: (html jQuery id: jQueryId) dialog open;
						with: [html image url: (SEWAFIconLibrary / #add24Png); 
												title: ('Add Environment' translateIn: self session); 
												altText: ('Add Environment' translateIn: self session) ]
	]