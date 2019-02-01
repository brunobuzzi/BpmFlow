operations
newRemoveUserFromRolButton

	^(SewafReportColumn 
			renderBlock: [:each :html | 
				html anchor callback: [self removeUserFromRole: each]; 
								with: [html image url: (SEWAFIconLibrary / #remove24Png); 
														title: ('Remove User from Role' translateIn: self session); 
														altText: ('Remove User from Role' translateIn: self session).]] 
				title: 'DEL') sortBlock: nil; 
			cssClass: 'width-6-percent';
			yourself