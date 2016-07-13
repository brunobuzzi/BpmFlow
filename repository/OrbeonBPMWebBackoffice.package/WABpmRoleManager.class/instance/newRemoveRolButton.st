operations
newRemoveRolButton

	^(SewafReportColumn 
			renderBlock: [:each :html | 
				html anchor callback: [self removeRol: each]; 
								with: [html image url: (SEWAFFileLibrary / #remove24Png); 
														title: ('Remove Role' translateFor: self session user); 
														altText: ('Remove Role' translateFor: self session user).]] 
				title: 'DEL') sortBlock: nil; 
				cssClass: 'width-6-percent';
			yourself