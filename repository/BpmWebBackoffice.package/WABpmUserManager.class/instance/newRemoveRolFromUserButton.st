operations
newRemoveRolFromUserButton

	^(SewafReportColumn 
			renderBlock: [:each :html | 
				html anchor callback: [self removeRolFromUser: each]; 
								with: [html image url: (SEWAFIconLibrary / #remove24Png); 
														title: ('Remove Role from User' translateIn: self session); 
														altText: ('Remove Role from User' translateIn: self session).]] 
				title: 'DEL') sortBlock: nil; 
				cssClass: 'width-6-percent';
			yourself