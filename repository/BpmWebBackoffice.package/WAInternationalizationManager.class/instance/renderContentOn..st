other
renderContentOn: html

	html div id: 'internationalization'; with: [
		self session bpmEnvironment isAdminsEnvironment ifTrue: [self renderModeIconsOn: html].
		self modeIsLanguage
		ifTrue:[self renderSelectOrCreateLanguageOn: html.
				html horizontalRule.
				self renderCurrentDictionaryTranslationsOn: html.]
		ifFalse: [self renderEnvironmentsInternationalizationOn: html]
	].