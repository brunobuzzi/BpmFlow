other
renderAddNewTranslationOn: html

	html form with: [
		html fieldSet with:[
			html legend with: [html strong: ('Add Translation' translateFor: self session user)].
				html label attributeAt: 'for' put: 'txtToTranslate'; with: ('Text to Translate' translateFor: self session user).
				html textInput attributeAt: 'id' put: 'txtToTranslate'; callback: [:value | stringKey := value]; with: stringKey.
				html label attributeAt: 'for' put: 'translation'; with: ('Translation' translateFor: self session user).
				html textInput attributeAt: 'id' put: 'translation'; callback: [:value | translatedString := value]; with: translatedString.
				html submitButton callback: [self saveTranslation]; with: ('Save Translation' translateFor: self session user).
					].
				].
	html horizontalRule.