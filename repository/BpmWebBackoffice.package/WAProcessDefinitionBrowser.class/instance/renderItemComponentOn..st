process
renderItemComponentOn: html

	html div class: 'float-right';with: [
		html div with: [
			selectedLateralItem canDelete ifTrue: [self renderDeleteProcessDefintionOn: html].
		].
	].
	
	self renderProcessMapOn: html.