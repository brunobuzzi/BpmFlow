language
getSelectedLanguage

	selectedLanguage ifNil: [^selectedLanguage := #'english'].

	^selectedLanguage