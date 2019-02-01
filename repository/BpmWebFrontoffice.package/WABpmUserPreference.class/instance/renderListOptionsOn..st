list
renderListOptionsOn: html

	html div id: 'user-preferences-list'; class: 'centered-unique-form float-left';
		with: [html form with: [
					html fieldSet with:[
						html legend with: [html strong: ('Lists' translateIn: self session)].
						self renderDisplayOrbeonFormModeOn: html.
						self renderDisplayTaskBoxModeOn: html.
						self renderDisplayPagingSizeOn: html.
						html submitButton callback: [self savePreferences]; with: ('Save Preferences' translateIn: self session).
					].
				].
		].