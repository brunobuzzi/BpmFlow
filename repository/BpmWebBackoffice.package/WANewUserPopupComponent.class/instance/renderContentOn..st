other
renderContentOn: html

	html form with: [
		html fieldSet with: [
			html legend class: 'top-search-legend'; 
				with: ('Create User' translateIn: self session).
			html div class: 'top-search-div'; with: [ | tentativeUserName |
				"see issue #799 to avoid username clash in user single environment (just a help not a definitive solution)"
				tentativeUserName := self defaultEnvironmentClass areUsersMultiEnvironment ifTrue: [''] ifFalse: ['@', self session bpmEnvironment name].
				html label attributeAt: 'for' put: 'username'; with: ('User Name' translateIn: self session).
				html textInput attributeAt: 'id' put: 'username'; callback: [:value | self addValue: value named: 'username']; value: tentativeUserName.
			].
			html div class: 'top-search-div'; with: [
				html label attributeAt: 'for' put: 'password'; with: ('Password' translateIn: self session).
				html textInput attributeAt: 'id' put: 'password'; callback: [:value | self addValue: value named: 'password'].
			].
			html div class: 'top-search-filters-one'; with: [
				html submitButton 
					style: 'margin-top: 25px;';
					callback: [self createNewUser]; 
					with: ('Create User' translateIn: self session)]
		]
	]