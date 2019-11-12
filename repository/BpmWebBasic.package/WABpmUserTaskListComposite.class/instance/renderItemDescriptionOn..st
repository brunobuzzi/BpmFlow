top banner
renderItemDescriptionOn: html

	mainPanel renderShowLateralListIconOn: html.
	html div class: 'lateral-right-component-main-data'; with: [
		self renderItemDescriptionTitleOn: html]. 
	html div class: 'lateral-right-component-secondary-data'; with: [
		self renderItemDescriptionSecondaryDataOn: html].
	html div class: 'lateral-right-component-additional-data'; with: [
		self renderItemDescriptionAditionalDataOn: html].