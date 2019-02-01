other
resetInternationalizationButton

	^(SewafReportColumn 
			renderBlock: [:each :html | 
				html anchor callback: [self resetInternationalization: each]; 
								with: [html image url: (SEWAFIconLibrary / #actionseditclear24Png); 
														title: ('Reset Internationalization' translateIn: self session); 
														altText: ('Reset Internationalization' translateIn: self session).]] 
				title: 'RP') sortBlock: nil; 
				cssClass: 'width-6-percent';
			yourself