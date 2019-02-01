other
renderNewCategoryFormOn: html

	html legend with: [html strong: ('New Category' translateIn: self session)].
	html label attributeAt: 'for' put: 'categotyName'; with: ('Category Name' translateIn: self session).
	html textInput attributeAt: 'id' put: 'categotyName'; callback: [:value | model name: value].
	html label attributeAt: 'for' put: 'color'; with: ('Color' translateIn: self session).
	html colorInput attributeAt: 'id' put: 'color'; callback: [:value | model color: value].
	html submitButton 
		class: 'display-block margin-top-15px';
		callback: [self createNewCategory]; 
		with: ('Create Category' translateIn: self session).