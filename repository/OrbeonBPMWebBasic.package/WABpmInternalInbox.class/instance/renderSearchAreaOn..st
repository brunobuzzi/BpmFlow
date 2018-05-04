search
renderSearchAreaOn: html

	html form with: [ 
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