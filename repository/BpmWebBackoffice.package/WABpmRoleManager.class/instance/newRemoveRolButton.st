operations
newRemoveRolButton

	^(SewafReportColumn 
			renderBlock: [:each :html | | jQueryId |
				each canDelete
				ifTrue: [
					jQueryId := self renderJQueryConfirmationDialogOn: html forActionNamed: 'removeRol' actionMethod: #removeRol: arguments: (Array with: each).
					html anchor "callback: [self removeRol: each]; "
								class: 'cursor-pointer';
								onClick: (html jQuery id: jQueryId) dialog open;
								with: [html image url: (SEWAFIconLibrary / #remove24Png); 
														title: ('Remove Role' translateIn: self session); 
														altText: ('Remove Role' translateIn: self session).]
				]
				ifFalse: [html image url: (SEWAFIconLibrary / #stopred24Png); 
								title: ('Rol Can not be removed' translateIn: self session);  
								altText: ('Rol Can not be removed' translateIn: self session).
				]
			]
			title: 'DEL') 
				sortBlock: nil; 
				cssClass: 'width-6-percent';
				yourself