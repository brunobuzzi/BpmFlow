process
renderItemComponentOn: html

	html div class: 'float-left';with: [
		html div class: 'width-15px'; with: [
			selectedLateralItem canDelete ifTrue: [self renderDeleteProcessDefintionOn: html].
		].
	].

	html div class: 'float-right'; with: [
		selectedLateralItem subProcesses do: [:each | self renderSubprocessDefinition: each on: html]. 
	].
	
	self renderProcessMapOn: html.