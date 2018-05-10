render
renderContentOn: html

	html div id: 'top-search-area'; class: 'top-search-area-box-shadow';
		with: [self renderSearchAreaOn: html].

	canvas notNil ifTrue: [self renderGraphOn: html]