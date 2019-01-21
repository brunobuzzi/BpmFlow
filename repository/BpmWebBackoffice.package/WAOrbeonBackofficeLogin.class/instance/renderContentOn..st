other
renderContentOn: html

	adminUser ifNil: [^super renderContentOn: html].

	html div id: 'flags'; with: [self renderLanguageFlagsOn: html].
	html div id: 'login'; with: [
		html heading: ('Select Environment' translateTo: selectedLanguage).
		html form with: [
				html div id: 'environment-div'; with: [self renderEnvironmentComboOn: html].
				html div id: 'login-button'; with: [
								html submitButton callback: [self showBackofficePortalFor: adminUser];
									with: ('Login' translateTo: selectedLanguage)].
		].
	].

	self session user: adminUser