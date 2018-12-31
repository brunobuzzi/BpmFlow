process
renderItemComponentOn: html

	html div class: 'float-left';with: [
		html div class: 'width-15px'; with: [
			selectedLateralItem canDelete ifTrue: [self renderDeleteProcessDefintionOn: html].
		].
	].
	
	self renderProcessMapOn: html.