other
renderFormFieldsOn: html

	html legend with: ('New Category' translateIn: self session).
	html label attributeAt: 'for' put: 'name'; with: ('Name' translateIn: self session).
	html textInput attributeAt: 'id' put: 'name'; callback: [:value | model name: value]; value: model name.
	html label attributeAt: 'for' put: 'password'; with: ('Password' translateIn: self session).
	html colorInput attributeAt: 'id' put: 'password'; callback: [:value | model password: value]; value: model password.