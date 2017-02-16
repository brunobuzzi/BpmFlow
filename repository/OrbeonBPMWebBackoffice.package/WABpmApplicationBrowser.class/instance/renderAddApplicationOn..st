other
renderAddApplicationOn: html
   | jQueryId |

	jQueryId := self renderJQueryPopupCompositeOn: html composite: WANewApplicationPopupComponent title: 'Create Application' domainObject: nil arguments: #().

	html div class: 'float-right margin-left-5px'; with: [
		html anchor 
					class: 'cursor-pointer';
					onClick: (html jQuery id: jQueryId) dialog open;
						with: [html image url: (SEWAFIconLibrary / #add24Png); 
												title: ('Add Application' translateFor: self session user); 
												altText: ('Add Application' translateFor: self session user) ]
	]