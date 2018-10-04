other
renderContentOn: html

	html form with: [
		html fieldSet with: [
			html legend class: ''; 
				with: ('Create Role' translateFor: self session user).
			html div class: 'top-search-div'; with: [
				html label attributeAt: 'for' put: 'rolname'; with: ('Role Name' translateFor: self session user).
				html textInput attributeAt: 'id' put: 'rolename'; callback: [:value | self addValue: value named: 'rolename'].
			].
			html div class: 'top-search-div'; with: [
				self renderApplicationComboOn: html].
			html div class: 'top-search-div'; style: 'width: 235px; margin-top: 18px;'; with: [
				html checkbox attributeAt: 'id' put: 'isadmin'; callback: [:value | self addValue: value named: 'isAdmin'].
				html label attributeAt: 'for' put: 'isadmin'; with: ('Is Admin ?' translateFor: self session user).
				html checkbox attributeAt: 'id' put: 'isbackoffice'; callback: [:value | self addValue: value named: 'isBackoffice'].
				html label attributeAt: 'for' put: 'isbackoffice'; with: ('Is Backoffice ?' translateFor: self session user).
			].
			html div class: 'top-search-div'; with: [
				html submitButton 
					style: 'margin-top: 25px;';
					callback: [self createNewRole]; 
					with: ('Create Role' translateFor: self session user)]
		]
	]