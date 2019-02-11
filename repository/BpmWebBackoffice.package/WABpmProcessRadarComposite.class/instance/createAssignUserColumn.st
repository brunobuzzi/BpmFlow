other
createAssignUserColumn

	^(SewafReportColumn 
			renderBlock: [:each :html |
				(each isDone not and: [each isFree])
				ifTrue: [
					html anchor "callback: [self removeRol: each]; "
								class: 'cursor-pointer';
								callback: [self setUsersTableFor: each];
								with: [html image url: (SEWAFIconLibrary / #useradd24iconPng); 
														title: ('Assign User' translateIn: self session); 
														altText: ('Assign User' translateIn: self session).]
				]
			]
			title: 'Assign') 
				sortBlock: nil; 
				cssClass: 'width-6-percent';
				yourself