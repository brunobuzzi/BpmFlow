search area
renderSearchAreaOn: html

	html form class: 'width-200px'; with: [ 
		html fieldSet with: [
			html radioGroup
				callback: [:value | self onRadioButtonChanged: value];
				selected: selectedInbox;
				with: [:group |
					self elements do: [ :each |
						html label: [ 
							group radioButton onChange: 'submit()'; value: each.
							html text: each ]
					]
				].
		].
	].

	html form with: [ 
		html fieldSet with: [
			"html legend class: 'top-search-legend'; with: ('Search Message' translateFor: self session user)."
			self renderSearchProcessIdFieldOn: html.
			self renderSearchSubmitButtonOn: html.
		].
	].