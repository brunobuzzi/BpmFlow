buttons
cloneDefaultButton

	^(SewafReportColumn 
			renderBlock: [:each :html | 
				html anchor callback: [self cloneDefaultInternationalizationTo: each]; 
								with: [html image url: (SEWAFIconLibrary / #editingcopy24Png); 
														title: ('Clone Default' translateIn: self session); 
														altText: ('Clone Default' translateIn: self session).]] 
				title: 'Clone Default') sortBlock: nil; 
				cssClass: 'width-6-percent';
			yourself