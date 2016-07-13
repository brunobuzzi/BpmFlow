other
renderContentOn: html

	html div id: 'internationalization'; class: 'centered-unique-form'; with: [
		html form with: [ 
			html fieldSet with: [
			html legend with: [html strong: ('Languages' translateFor: self session user)].
					html label attributeAt: 'for' put: 'language'; with: ('Select Language' translateFor: self session user).
					html select attributeAt: 'id' put: 'language'; class: '';
						list: (#(''), self getInternationalization currentDictionaries);
						callback: [:value | searchValues at: 'selected-language' put: value];
						selected: self session user currentLanguage.
					html submitButton 
						callback: [self setLanguage]; 
						with: ('Set Language' translateFor: self session user).
				].
		].
	].