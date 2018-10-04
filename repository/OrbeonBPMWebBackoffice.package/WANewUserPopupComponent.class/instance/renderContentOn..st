other
renderContentOn: html

	html form with: [
		html fieldSet with: [
			html legend class: 'top-search-legend'; 
				with: ('Create User' translateFor: self session user).
			html div class: 'top-search-div'; with: [
				html label attributeAt: 'for' put: 'username'; with: ('User Name' translateFor: self session user).
				html textInput attributeAt: 'id' put: 'username'; callback: [:value | self addValue: value named: 'username'].
			].
			html div class: 'top-search-div'; with: [
				html label attributeAt: 'for' put: 'password'; with: ('Password' translateFor: self session user).
				html textInput attributeAt: 'id' put: 'password'; callback: [:value | self addValue: value named: 'password'].
			].
			html div class: 'top-search-filters-one'; with: [
				html submitButton 
					style: 'margin-top: 25px;';
					callback: [self createNewUser]; 
					with: ('Create User' translateFor: self session user)]
		]
	]