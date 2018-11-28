search area
renderProcessIdOn: html

	html div class: 'top-search-div width-100px'; with: [
		html label attributeAt: 'for' put: 'id'; with: ('Id' translateFor: self session user).
		html textInput attributeAt: 'id' put: 'id';
			callback: [:value | self onProcessIdChanged: value];
			with: (searchValues at: 'id' ifAbsent: ['']).
	].