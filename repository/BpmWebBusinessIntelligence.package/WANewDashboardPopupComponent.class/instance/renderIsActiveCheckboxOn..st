other
renderIsActiveCheckboxOn: html

	html label attributeAt: 'for' put: 'isActive'; with: ('Is Active ?' translateIn: self session).
	html checkbox 
		attributeAt: 'id' put: 'isActive'; 
		callback: [:value | self addValue: value named: 'isActive']; 
		class: 'display-block'.