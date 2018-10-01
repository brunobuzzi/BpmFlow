other
renderPreviousDashboardOn: html previous: prevDashboard

	html div class: 'float-left margin-left-5px'; with: [
		html anchor 
					class: 'cursor-pointer';
					callback: [];
						with: [html image url: (SEWAFIconLibrary / #back16Png); 
												title: ('Previous Dashboard' translateFor: self session user); 
												altText: ('Previous Dashboard' translateFor: self session user) ]
	]