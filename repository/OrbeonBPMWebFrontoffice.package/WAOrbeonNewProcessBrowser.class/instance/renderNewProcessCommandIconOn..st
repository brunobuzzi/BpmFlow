other
renderNewProcessCommandIconOn: html

	html div class: 'centered-forms'; with: [
		self selectedLateralItem ifNotNil: [self renderNewProcessIconOn: html for: self selectedLateralItem].
	].