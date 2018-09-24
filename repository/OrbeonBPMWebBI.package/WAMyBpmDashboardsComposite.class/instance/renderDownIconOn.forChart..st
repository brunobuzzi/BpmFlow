other
renderDownIconOn: html forChart: aBpmChartDefinition

	html div class: 'float-left margin-left-5px'; with: [
		html anchor 
					class: 'cursor-pointer';
					callback: [self moveDown: aBpmChartDefinition];
						with: [html image url: (SEWAFIconLibrary / #down16Png); 
												title: ('Move Down' translateFor: self session user); 
												altText: ('Move Down' translateFor: self session user) ]
	]