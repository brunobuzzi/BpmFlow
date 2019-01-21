reset password
resetPasswordButton

	^(SewafReportColumn 
			renderBlock: [:each :html | 
				html anchor callback: [self resetPasswordOf: each]; 
								with: [html image url: (SEWAFIconLibrary / #actionseditclear24Png); 
														title: ('Reset Password' translateFor: self session user); 
														altText: ('Reset Password' translateFor: self session user).]] 
				title: 'RP') sortBlock: nil; 
				cssClass: 'width-6-percent';
			yourself