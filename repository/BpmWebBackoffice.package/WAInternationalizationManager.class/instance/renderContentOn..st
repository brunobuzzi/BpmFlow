other
renderContentOn: html

	html div id: 'internationalization'; with: [
		html form with: [ 
			html fieldSet with: [
			html legend with: [html strong: ('Languages' translateIn: self session)].
					html label attributeAt: 'for' put: 'language'; with: ('Languages' translateIn: self session).
					html select attributeAt: 'id' put: 'language'; class: '';
						list: (#(''), self getInternationalization currentDictionaries);
						onChange: 'submit()';
						callback: [:value | searchValues at: 'selected-language' put: value];
						selected: self currentDictionaryName.
					html label attributeAt: 'for' put: 'newLanguage'; with: ('New Language' translateIn: self session).
					html textInput attributeAt: 'id' put: 'newLanguage'; callback: [:value | newLanguageName := value]; with: newLanguageName.
					html submitButton 
						callback: [self saveLanguage]; 
						with: ('Save Language' translateIn: self session).
				].
			].
		html horizontalRule.
		self renderCurrentDictionaryTranslationsOn: html.].