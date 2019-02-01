buttons
cloneSelectedButton

	^(SewafReportColumn 
			renderBlock: [:each :html | 
				html anchor callback: [self cloneSelectedInternationalization: each]; 
								with: [html image url: (SEWAFIconLibrary / #editingcopy24Png); 
														title: ('Clone Selected' translateIn: self session); 
														altText: ('Clone Selected' translateIn: self session).]] 
				title: 'Clone Selected') sortBlock: nil; 
				cssClass: 'width-6-percent';
			yourself