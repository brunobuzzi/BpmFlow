other
cloneDefaultButton

	^(SewafReportColumn 
			renderBlock: [:each :html | 
				html anchor callback: [self cloneDefaultInternationalization]; 
								with: [html image url: (SEWAFIconLibrary / #actionseditclear24Png); 
														title: ('Clone Default' translateIn: self session); 
														altText: ('Clone Default' translateIn: self session).]] 
				title: 'RP') sortBlock: nil; 
				cssClass: 'width-6-percent';
			yourself