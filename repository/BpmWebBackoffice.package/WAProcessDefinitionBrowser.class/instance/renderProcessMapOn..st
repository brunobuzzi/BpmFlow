process
renderProcessMapOn: html

	svgCanvas model: selectedLateralItem.

	relatedProcess ifNotNil: [
		svgCanvas model: relatedProcess.
		html div class: 'margin-top-5px margin-left-5px'; with: [
			html anchor 
						callback: [relatedProcess := nil];
						with: [html image url: (SEWAFIconLibrary / #arrowsleftcircular32Png); 
												title: ('Show Caller Process' translateIn: self session);
												altText: ('Show Caller Process' translateIn: self session)]
		]
	].

	html div with: [html render: svgCanvas].