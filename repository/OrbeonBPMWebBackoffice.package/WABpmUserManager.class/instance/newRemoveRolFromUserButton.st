operations
newRemoveRolFromUserButton

	^(SewafReportColumn 
			renderBlock: [:each :html | 
				html anchor callback: [self removeRolFromUser: each]; 
								with: [html image url: (SEWAFIconLibrary / #remove24Png); 
														title: ('Remove Role from User' translateFor: self session user); 
														altText: ('Remove Role from User' translateFor: self session user).]] 
				title: 'DEL') sortBlock: nil; 
				cssClass: 'width-6-percent';
			yourself