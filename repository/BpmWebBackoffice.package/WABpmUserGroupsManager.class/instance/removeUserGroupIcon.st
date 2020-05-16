commands
removeUserGroupIcon

	^(SewafReportColumn 
			renderBlock: [:each :html | | jQueryId |
				each canDelete
				ifTrue: [
					jQueryId := self renderJQueryConfirmationDialogOn: html forActionNamed: 'removeUserGroup' actionMethod: #removeUserGroup: arguments: (Array with: each).
					html anchor 
								class: 'cursor-pointer';
								onClick: (html jQuery id: jQueryId) dialog open;
								with: [html image url: (SEWAFIconLibrary / #remove24Png); 
														title: ('Remove User Group' translateIn: self session); 
														altText: ('Remove User Group' translateIn: self session).]
				]
				ifFalse: [html image url: (SEWAFIconLibrary / #stopred24Png); 
								title: ('User Group Can not be removed' translateIn: self session);  
								altText: ('User Group Can not be removed' translateIn: self session).
				]
			]
			title: 'DEL') 
				sortBlock: nil; 
				cssClass: 'width-6-percent';
				yourself