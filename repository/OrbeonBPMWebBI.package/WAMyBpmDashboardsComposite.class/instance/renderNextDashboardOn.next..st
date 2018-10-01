other
renderNextDashboardOn: html next: aBpmDashboardInstance

	html div class: 'float-right margin-left-5px'; with: [
		html anchor 
					class: 'cursor-pointer';
					callback: [];
						with: [html image url: (SEWAFIconLibrary / #fordward16Png); 
												title: ('Next Dashboard' translateFor: self session user); 
												altText: ('Next Dashboard' translateFor: self session user) ]
	]