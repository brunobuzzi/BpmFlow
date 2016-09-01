operations
removeUserButton

	^(SewafReportColumn 
			renderBlock: [:each :html | | jQueryId |
				jQueryId := self renderJQueryConfirmationDialogOn: html forActionNamed: 'removeUser' actionMethod: #removeUser: arguments: (Array with: each).
				each canDelete 
				ifTrue: [
					html anchor "callback: [self removeUser: each]; "
								class: 'cursor-pointer';
								onClick: (html jQuery id: jQueryId) dialog open;
								with: [html image url: (SEWAFIconLibrary / #remove24Png); 
														title: ('Remove User' translateFor: self session user); 
															altText: ('Remove User' translateFor: self session user).]
				]
				ifFalse: [html image url: (SEWAFIconLibrary / #stopred24Png); 
								title: ('User Can not be removed' translateFor: self session user);  
								altText: ('User Can not be removed' translateFor: self session user).
				]
			] 
			title: 'DEL') 
				sortBlock: nil; 
				cssClass: 'width-6-percent';
			yourself