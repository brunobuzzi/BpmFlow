other
renderSearchOptionsOn: html

	self renderShowHideJsWindowIconOn: html. "show/hide search area"

	html div id: 'top-search-form'; with: [
		html form with: [ 
			html fieldSet with: [
				html legend class: 'top-search-legend'; with: ('Search Options' translateIn: self session).
				html div class: 'top-search-div'; with: [
					html label attributeAt: 'for' put: 'username'; with: ('Username' translateIn: self session).
					html textInput attributeAt: 'id' put: 'username';
						callback: [:value | self onUsernameChanged: value]; 
						with: (searchValues at: 'username' ifAbsent: ['']).
				].
				html div class: 'top-search-filters-two'; class: 'margin-top-20px float-left width-100px'; with: [self renderSubmitButtonOn: html].
				html div class: 'top-search-div'; class: 'margin-top-15px width-400px'; with: [self renderOptionListOn: html].
			].
		].
	].