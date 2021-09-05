other
renderContentOn: html

	html div id: 'internationalization'; class: 'centered-unique-form'; with: [
		html form with: [ 
			html fieldSet with: [
			html legend with: [html strong: ('Languages' translateIn: self session)].
					html label attributeAt: 'for' put: 'language'; with: ('Select Language' translateIn: self session).
					html select 
						attributeAt: 'id' put: 'language';
						class: '';
						list: (#(''), self session systemRoot internationalizationDictionariesNames);
						callback: [:value | searchValues at: 'selected-language' put: value];
						selected: self session user currentLanguage.
					html submitButton 
						callback: [self setLanguage]; 
						with: ('Set Language' translateIn: self session).
				].
		].
	].