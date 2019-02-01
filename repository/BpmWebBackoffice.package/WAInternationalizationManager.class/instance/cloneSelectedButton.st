other
cloneSelectedButton

	^(SewafReportColumn 
			renderBlock: [:each :html | 
				html anchor callback: [self cloneSelectedInternationalization]; 
								with: [html image url: (SEWAFIconLibrary / #actionseditclear24Png); 
														title: ('Clone Selected' translateIn: self session); 
														altText: ('Clone Selected' translateIn: self session).]] 
				title: 'RP') sortBlock: nil; 
				cssClass: 'width-6-percent';
			yourself