reset password
resetPasswordButton

	^(SewafReportColumn 
			renderBlock: [:each :html | 
				html anchor callback: [self resetPasswordOf: each]; 
								with: [html image url: (SEWAFIconLibrary / #actionseditclear24Png); 
														title: ('Reset Password' translateIn: self session); 
														altText: ('Reset Password' translateIn: self session).]] 
				title: 'RP') sortBlock: nil; 
				cssClass: 'width-6-percent';
			yourself