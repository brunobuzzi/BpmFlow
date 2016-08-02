list
renderListOptionsOn: html

	html div id: 'user-preferences'; class: 'centered-unique-form float-left';
		with: [html form with: [
					html fieldSet with:[
						html legend with: [html strong: ('Lists' translateFor: self session user)].
						self renderDisplayOrbeonFormModeOn: html.
						self renderDisplayTaskBoxModeOn: html.
						self renderDisplayPagingSizeOn: html.
						html submitButton callback: [self savePreferences]; with: ('Save Preferences' translateFor: self session user).
					].
				].
		].