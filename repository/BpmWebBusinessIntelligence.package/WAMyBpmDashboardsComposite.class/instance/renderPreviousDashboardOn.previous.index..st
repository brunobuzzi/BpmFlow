browsing
renderPreviousDashboardOn: html previous: aBpmDashboardInstance index: index

	html div class: 'float-left margin-left-5px'; with: [
		html anchor 
					class: 'cursor-pointer';
					callback: [instancesToRender at: index put: aBpmDashboardInstance];
						with: [html image url: (SEWAFIconLibrary / #back16Png); 
												title: ('Previous Dashboard' translateIn: self session); 
												altText: ('Previous Dashboard' translateIn: self session) ]
	]