other
renderAddNewTranslationOn: html

	html form with: [
		html fieldSet with:[
			html legend with: [html strong: ('Add Translation' translateIn: self session)].
				html label attributeAt: 'for' put: 'txtToTranslate'; with: ('Text to Translate' translateIn: self session).
				html textInput attributeAt: 'id' put: 'txtToTranslate'; callback: [:value | stringKey := value]; with: stringKey.
				html label attributeAt: 'for' put: 'translation'; with: ('Translation' translateIn: self session).
				html textInput attributeAt: 'id' put: 'translation'; callback: [:value | translatedString := value]; with: translatedString.
				html submitButton callback: [self saveTranslation]; with: ('Save Translation' translateIn: self session).
					].
				].
	html horizontalRule.