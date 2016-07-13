operations
newRemoveUserFromRolButton

	^(SewafReportColumn 
			renderBlock: [:each :html | 
				html anchor callback: [self removeUserFromRole: each]; 
								with: [html image url: (SEWAFFileLibrary / #remove24Png); 
														title: ('Remove User from Role' translateFor: self session user); 
														altText: ('Remove User from Role' translateFor: self session user).]] 
				title: 'DEL') sortBlock: nil; 
			cssClass: 'width-6-percent';
			yourself