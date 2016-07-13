other
renderFormFieldsOn: html

	html legend with: ('New Category' translateFor: self session user).
	html label attributeAt: 'for' put: 'name'; with: ('Name' translateFor: self session user).
	html textInput attributeAt: 'id' put: 'name'; callback: [:value | model name: value]; value: model name.
	html label attributeAt: 'for' put: 'password'; with: ('Password' translateFor: self session user).
	html colorInput attributeAt: 'id' put: 'password'; callback: [:value | model password: value]; value: model password.