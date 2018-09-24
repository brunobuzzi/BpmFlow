other
renderUpIconOn: html forChart: aBpmChartDefinition

	html div class: 'float-right margin-right-5px'; with: [
		html anchor 
					class: 'cursor-pointer';
					callback: [self moveUp: aBpmChartDefinition];
						with: [html image url: (SEWAFIconLibrary / #up16Png); 
												title: ('Move Up' translateFor: self session user); 
												altText: ('Move Up' translateFor: self session user) ]
	]