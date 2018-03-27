other
renderCategoryFormOn: html

	html form with: [
		html fieldSet with: [
			selectedCategory 
				ifNil: [self renderNewCategoryFormOn: html]
				ifNotNil: [self renderSelectedCategoryFormOn: html]
		].
	]