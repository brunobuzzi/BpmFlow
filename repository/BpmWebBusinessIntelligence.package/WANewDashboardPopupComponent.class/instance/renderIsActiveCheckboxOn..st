other
renderIsActiveCheckboxOn: html

	html label attributeAt: 'for' put: 'isActive'; with: ('Is Active ?' translateFor: self session user).
	html checkbox attributeAt: 'id' put: 'isActive'; callback: [:value | self addValue: value named: 'isActive']; value: (self componentValueAt: 'isActive') ; class: 'display-block'.