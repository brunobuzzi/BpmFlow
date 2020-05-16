render
renderSearchUserGroupOn: html

	self renderShowHideJsWindowIconOn: html. "show/hide search area"


	html form id: 'top-search-form'; with: [
		html fieldSet with: [
			html legend class: 'top-search-legend'; 
				with: ('Search Users Groups' translateIn: self session).
			html div class: 'top-search-div'; with: [
				html label attributeAt: 'for' put: 'usergroup'; with: ('User Group Name' translateIn: self session).
				html textInput attributeAt: 'id' put: 'usergroup'; callback: [:value | model name: value].
			].
			html div class: 'top-search-filters-one'; with: [
				html submitButton style: 'margin-top: 25px;';
					callback: [self searchUsersGroups]; 
					with: ('Search' translateIn: self session).
			]
		]
	].

	self renderAddUserGroupIconOn: html.