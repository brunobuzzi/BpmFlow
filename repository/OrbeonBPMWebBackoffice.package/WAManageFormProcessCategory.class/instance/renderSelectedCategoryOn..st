other
renderSelectedCategoryOn: html

	html legend with: [html strong: ('Selected Category' translateFor: self session user)].
	html label 
		attributeAt: 'for' put: 'name'; 
		with: ('Name' translateFor: self session user).
	html textInput attributeAt: 'id' put: 'name';
		value: selectedCategory name;
		callback: [:value | self addValue: value named: 'name'].
	html label 
		attributeAt: 'for' put: 'color'; 
		with: ('Color' translateFor: self session user).
	html colorInput attributeAt: 'id' put: 'color';
		value: selectedCategory color; 
		callback: [:value | self addValue: value named: 'color'].
	html submitButton 
		class: 'display-block margin-top-15px';
		callback: [self modifyCategory]; 
		with: ('Modify Category' translateFor: self session user).
	html submitButton 
		class: 'display-block margin-top-15px';
		callback: [self removeCategory]; 
		with: ('Remove Category' translateFor: self session user).