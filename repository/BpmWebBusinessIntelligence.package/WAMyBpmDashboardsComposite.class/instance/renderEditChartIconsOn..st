other
renderEditChartIconsOn: html

	html div class: 'float-right margin-left-5px'; with: [
		html anchor 
					class: 'cursor-pointer';
					callback: [self switchRenderEditChartIcons];
						with: [html image url: (SEWAFIconLibrary / #pencil24Png); 
												title: ('Show Chart Options' translateIn: self session); 
												altText: ('Show Chart Options' translateIn: self session) ]
	]