other
renderContentOn: html

	html form with: [
		html fieldSet with: [
			html legend class: ''; 
				with: ('Create User Group' translateIn: self session).
			html div class: 'top-search-div'; with: [
				html label attributeAt: 'for' put: 'usergroup'; with: ('User Group Name' translateIn: self session).
				html textInput attributeAt: 'id' put: 'usergroup'; callback: [:value | self addValue: value named: 'usergroup'].
				html label attributeAt: 'for' put: 'description'; with: ('Description' translateIn: self session).
				html textArea attributeAt: 'id' put: 'description'; callback: [:value | self addValue: value named: 'description'].
			].
			html div class: 'top-search-div'; with: [
				html submitButton 
					style: 'margin-top: 25px;';
					callback: [self createNewUserGroup]; 
					with: ('Create User Group' translateIn: self session)]
		]
	]