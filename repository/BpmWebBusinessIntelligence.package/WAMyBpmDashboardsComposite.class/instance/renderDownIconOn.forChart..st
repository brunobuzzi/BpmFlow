other
renderDownIconOn: html forChart: aBpmChartDefinition

	html div class: 'float-left margin-left-5px'; with: [
		html anchor 
					class: 'cursor-pointer';
					callback: [self moveDown: aBpmChartDefinition];
						with: [html image url: (SEWAFIconLibrary / #down16Png); 
												title: ('Move Down' translateIn: self session); 
												altText: ('Move Down' translateIn: self session) ]
	]