operations
newRemoveRolFromUserButton

	^(SewafReportColumn 
			renderBlock: [:each :html | 
				html anchor callback: [self removeRoleFromUser: each]; 
								with: [html image url: (SEWAFFileLibrary / #remove24Png); 
														title: ('Remove User Role' translateFor: self session user); 
														altText: ('Remove User Role' translateFor: self session user).]] 
				title: 'DEL') sortBlock: nil; 
			cssClass: 'width-6-percent';
			yourself