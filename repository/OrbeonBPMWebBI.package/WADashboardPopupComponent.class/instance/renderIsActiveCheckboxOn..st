other
renderIsActiveCheckboxOn: html

	html label attributeAt: 'for' put: 'isActive'; with: ('Is Active ?' translateFor: self session user).
	html checkbox attributeAt: 'id' put: 'isActive'; callback: [:value | self model isActive: value]; value: self model isActive; class: 'display-block'.