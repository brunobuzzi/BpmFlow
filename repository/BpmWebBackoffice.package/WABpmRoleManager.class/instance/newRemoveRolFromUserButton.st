operations
newRemoveRolFromUserButton

	^(SewafReportColumn 
			renderBlock: [:each :html | 
				html anchor callback: [self removeRoleFromUser: each]; 
								with: [html image url: (SEWAFIconLibrary / #remove24Png); 
														title: ('Remove User Role' translateIn: self session); 
														altText: ('Remove User Role' translateIn: self session).]] 
				title: 'DEL') sortBlock: nil; 
			cssClass: 'width-6-percent';
			yourself