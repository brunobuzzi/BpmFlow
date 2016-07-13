operations
removeUserButton

	^(SewafReportColumn 
			renderBlock: [:each :html | 
				html anchor callback: [self removeUser: each]; 
								with: [html image url: (SEWAFIconLibrary / #remove24Png); 
														title: ('Remove User' translateFor: self session user); 
														altText: ('Remove User' translateFor: self session user).]] 
				title: 'DEL') sortBlock: nil; 
				cssClass: 'width-6-percent';
			yourself