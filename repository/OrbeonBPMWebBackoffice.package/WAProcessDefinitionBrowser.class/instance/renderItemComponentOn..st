process
renderItemComponentOn: html

	html div class: 'width-50per float-left';with: [
		html div class: 'width-15px'; with: [
			selectedLateralItem canDelete ifTrue: [self renderDeleteProcessDefintionOn: html].
			selectedLateralItem canBeStartedByAnonymousForm ifTrue: [self renderToggleOn: html].
		].
		html div with: [
			html unorderedList with:[
				selectedLateralItem getTransitions do: [:transitionDefinition |
					html listItem with: [self renderTransitionOn: html forTransition: transitionDefinition.
												html horizontalRule.].
				].
			].
		].
	].
	html div class: 'width-45per margin-top-15px float-right margin-right-20px'; with: [self renderSelectedTransitionOn: html].