other
renderSelectedCategoryFormOn: html

	html legend with: [html strong: ('Selected Category' translateIn: self session)].
	html label attributeAt: 'for' put: 'categotyName'; with: ('Category Name' translateIn: self session).
	html textInput 
		attributeAt: 'id' put: 'categotyName';
		value: selectedCategory name;
		callback: [:value | self addValue: value named: 'name'].
	html label attributeAt: 'for' put: 'color'; with: ('Color' translateIn: self session).
	html colorInput 
		attributeAt: 'id' put: 'color';
		value: selectedCategory color; 
		callback: [:value | self addValue: value named: 'color'].
	html submitButton 
		class: 'display-block margin-top-15px';
		callback: [self modifyCategory]; 
		with: ('Modify Category' translateIn: self session).
	html submitButton 
		class: 'display-block margin-top-15px';
		callback: [self removeCategory]; 
		with: ('Remove Category' translateIn: self session)