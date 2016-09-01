operations
newRemoveRolButton

	^(SewafReportColumn 
			renderBlock: [:each :html | | jQueryId |
				jQueryId := self renderJQueryConfirmationDialogOn: html forActionNamed: 'removeRol' actionMethod: #removeRol: arguments: (Array with: each).
				each canDelete
				ifTrue: [
					html anchor "callback: [self removeRol: each]; "
								class: 'cursor-pointer';
								onClick: (html jQuery id: jQueryId) dialog open;
								with: [html image url: (SEWAFIconLibrary / #remove24Png); 
														title: ('Remove Role' translateFor: self session user); 
														altText: ('Remove Role' translateFor: self session user).]
				]
				ifFalse: [html image url: (SEWAFIconLibrary / #stopred24Png); 
								title: ('Rol Can not be removed' translateFor: self session user);  
								altText: ('Rol Can not be removed' translateFor: self session user).
				]
			]
			title: 'DEL') 
				sortBlock: nil; 
				cssClass: 'width-6-percent';
				yourself