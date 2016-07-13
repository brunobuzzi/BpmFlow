other
renderCategoryFormOn: html

	html div class: 'centered-unique-form float-left'; with: [
		html form 
			"class: 'height250';"
			with: [
				html fieldSet with: [
					selectedCategory 
						ifNil: [self renderNewCategoryOn: html]
						ifNotNil: [self renderSelectedCategoryOn: html].
			].
		]
	].