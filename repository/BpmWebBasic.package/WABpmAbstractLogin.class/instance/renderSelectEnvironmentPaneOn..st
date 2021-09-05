other
renderSelectEnvironmentPaneOn: html

	html div id: 'flags'; with: [self renderLanguageFlagsOn: html].
	html div id: 'login'; with: [
		html heading: ('Select Environment' translateIn: self session).
		html form with: [
				html div id: 'environment-div'; with: [self renderEnvironmentComboOn: html].
				html div id: 'login-button'; with: [
								html submitButton callback: [self showPortalFor: user];
									with: ('Enter' translateIn: self session)].
		].
	].