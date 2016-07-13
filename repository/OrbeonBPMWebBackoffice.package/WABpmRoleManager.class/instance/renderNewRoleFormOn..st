other
renderNewRoleFormOn: html

	self renderShowHideWindowIconOn: html. "show/hide search area"

	(self isEnabledToShowElementNamed: 'search-area') ifFalse: [^self].

	html div 
		with: [html form with: [
					html fieldSet with: [
						html legend class: 'top-search-legend'; 
							with: ('Create-Search Roles' translateFor: self session user).
						html div class: 'top-search-div'; with: [
							html label attributeAt: 'for' put: 'rolename'; with: ('Rol''s Name' translateFor: self session user).
							html textInput attributeAt: 'id' put: 'rolename'; callback: [:value | model name: value].
						].
						html div class: 'top-search-div'; with: [
							html label attributeAt: 'for' put: 'application'; with: ('Application' translateFor: self session user).
							self renderApplicationComboOn: html.
						].
						html div class: 'top-search-div'; style: 'width: 235px; margin-top: 18px;'; with: [
							html checkbox attributeAt: 'id' put: 'isadmin'; callback: [:value | self model isAdmin: value].
							html label attributeAt: 'for' put: 'isadmin'; with: ('Is Admin ?' translateFor: self session user).
							html checkbox attributeAt: 'id' put: 'isbackoffice'; callback: [:value | self isBackoffice: value].
							html label attributeAt: 'for' put: 'isbackoffice'; with: ('Is Backoffice ?' translateFor: self session user).
						].
						html div id: 'top-search-filters-one'; with: [
							html submitButton style: 'margin-top: 25px;';
								callback: [self searchRoles]; 
								with: ('Search' translateFor: self session user).
							html submitButton 
								callback: [self createNewRolIn: selectedApplication]; 
								with: ('Create Role' translateFor: self session user)]
					]
				]
		].