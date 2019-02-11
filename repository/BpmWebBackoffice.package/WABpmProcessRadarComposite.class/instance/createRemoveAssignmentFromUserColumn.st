assign unassign
createRemoveAssignmentFromUserColumn

	^(SewafReportColumn 
			renderBlock: [:each :html | | jQueryId |
				(each isDone not and: [each isTaken])
				ifTrue: [
					jQueryId := self renderJQueryConfirmationDialogOn: html forActionNamed: 'removeAssignment' actionMethod: #removeUserFromAssignment: arguments: (Array with: each).
					html anchor "callback: [self removeRol: each]; "
								class: 'cursor-pointer';
								onClick: (html jQuery id: jQueryId) dialog open;
								with: [html image url: (SEWAFIconLibrary / #gointo24Png); 
														title: ('Unassign Current User' translateIn: self session); 
														altText: ('Unassign Current User' translateIn: self session).]
				]
			]
			title: 'Unassign') 
				sortBlock: nil; 
				cssClass: 'width-6-percent';
				yourself