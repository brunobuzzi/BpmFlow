other
renderSearchOptionsOn: html

	self renderShowHideWindowIconOn: html. "show/hide search area"
	(self isEnabledToShowElementNamed: 'search-area') ifFalse: [^self].
	html form with: [ 
		html fieldSet with: [
			html legend class: 'top-search-legend'; with: ('Search Options' translateFor: self session user).
			html div class: 'top-search-div'; with: [
				html label attributeAt: 'for' put: 'username'; with: ('Username' translateFor: self session user).
				html textInput attributeAt: 'id' put: 'username';
					callback: [:value | self onUsernameChanged: value]; 
					with: (searchValues at: 'username' ifAbsent: ['']).
			].
			html div class: 'top-search-filters-two'; class: 'margin-top-20px float-left width-100px'; with: [self renderSubmitButtonOn: html].
			html div class: 'top-search-div'; class: 'margin-top-15px width-400px'; with: [self renderOptionListOn: html].
		].
	].