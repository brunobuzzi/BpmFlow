other
renderAddUserToEnvironmentOn: html
   | jQueryId |

	jQueryId := self renderJQueryPopupCompositeOn: html 
							width: 450 height: 500 
							composite: WAAddUserToEnvironmentPopupComponent 
							title: 'Add Users to Selected Environment'
							domainObject: nil 
							arguments: #().

	html div class: 'margin-left-5px'; with: [
		html anchor 
					class: 'cursor-pointer';
					onClick: (html jQuery id: jQueryId) dialog open;
						with: [html image url: (SEWAFIconLibrary / #usersadduser32Png); 
												title: ('Add Users to Selected Environment' translateIn: self session); 
												altText: ('Add Users to Selected Environment' translateIn: self session) ]
	]