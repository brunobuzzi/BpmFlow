other
removeUserButton

	^(SewafReportColumn 
			renderBlock: [:each :html | | jQueryId |
				each canDelete 
				ifTrue: [
					jQueryId := self renderJQueryConfirmationDialogOn: html forActionNamed: 'removeUser' actionMethod: #removeUser: arguments: (Array with: each).
					html anchor "callback: [self removeUser: each]; "
								class: 'cursor-pointer';
								onClick: (html jQuery id: jQueryId) dialog open;
								with: [html image url: (SEWAFIconLibrary / #remove24Png); 
														title: ('Remove User' translateIn: self session); 
															altText: ('Remove User' translateIn: self session).]
				]
				ifFalse: [html image url: (SEWAFIconLibrary / #stopred24Png); 
								title: ('User Can not be removed' translateIn: self session);  
								altText: ('User Can not be removed' translateIn: self session).
				]
			] 
			title: 'DEL') 
				sortBlock: nil; 
				cssClass: 'width-6-percent';
			yourself