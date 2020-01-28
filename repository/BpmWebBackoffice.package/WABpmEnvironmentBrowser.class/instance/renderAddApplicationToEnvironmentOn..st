render
renderAddApplicationToEnvironmentOn: html
   | jQueryId |

	jQueryId := self renderJQueryPopupCompositeOn: html 
							width: 450 height: 500 
							composite: WAAddApplicationToEnvironmentPopupComponent 
							title: 'Add Applications to Selected Environment'
							domainObject: nil 
							arguments: #().

	html div class: 'padding-left-10px'; with: [
		html anchor 
					class: 'cursor-pointer';
					onClick: (html jQuery id: jQueryId) dialog open;
						with: [html image url: (SEWAFIconLibrary / #checklist32Png); 
												title: ('Add Applications to Selected Environment' translateIn: self session); 
												altText: ('Add Applications to Selected Environment' translateIn: self session) ]
	]