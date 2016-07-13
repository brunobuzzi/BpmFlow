other
renderNewCategoryFormOn: html

	html legend with: [html strong: ('New Category' translateFor: self session user)].
	html label attributeAt: 'for' put: 'categotyName'; with: ('Category Name' translateFor: self session user).
	html textInput attributeAt: 'id' put: 'categotyName'; callback: [:value | model name: value].
	html label attributeAt: 'for' put: 'color'; with: ('Color' translateFor: self session user).
	html colorInput attributeAt: 'id' put: 'color'; callback: [:value | model color: value].
	html submitButton 
		class: 'display-block margin-top-15px';
		callback: [self createNewCategory]; 
		with: ('Create Category' translateFor: self session user).