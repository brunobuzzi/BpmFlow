browsing
renderNextDashboardOn: html next: aBpmDashboardInstance index: index

	html div class: 'float-right margin-left-5px'; with: [
		html anchor 
					class: 'cursor-pointer';
					callback: [instancesToRender at: index put: aBpmDashboardInstance];
						with: [html image url: (SEWAFIconLibrary / #forward16Png); 
												title: ('Next Dashboard' translateFor: self session user); 
												altText: ('Next Dashboard' translateFor: self session user) ]
	]