other
renderSelectOrCreateLanguageOn: html

	html div with: [
		html form with: [ 
			html fieldSet with: [
			html legend with: [html strong: ('Languages for [' translateIn: self session), self printCurrentEnvironmentName, ']{', self printInternationalizationType, '}'].
					html label attributeAt: 'for' put: 'language'; with: ('Languages' translateIn: self session).
					html select attributeAt: 'id' put: 'language'; class: '';
						list: (#(''), self session systemRoot internationalizationDictionariesNames);
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
	].