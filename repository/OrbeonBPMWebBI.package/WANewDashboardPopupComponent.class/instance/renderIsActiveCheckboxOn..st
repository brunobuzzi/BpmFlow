other
renderIsActiveCheckboxOn: html

	html checkbox attributeAt: 'id' put: 'isActive'; callback: [:value | self model isActive: value]; value: self model isActive.
	html label attributeAt: 'for' put: 'isActive'; with: ('Is Active ?' translateFor: self session user).