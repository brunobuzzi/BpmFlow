other
renderContentOn: html

	html div id: 'user-preferences'; class: 'centered-unique-form float-left';
		with: [html form with: [
					html fieldSet with:[
						html legend with: [html strong: ('Lists' translateIn: self session)].
						self renderDisplayPagingSizeOn: html.
						html submitButton callback: [self savePreferences]; with: ('Save Preferences' translateIn: self session).
					].
				].
		].
	html div id: 'user-preferences-2'; class: 'centered-unique-form float-left';
		with: [html form with: [
					html fieldSet with:[
						html legend with: [html strong: ('Backcolors' translateIn: self session)].
						self renderListBackcolorOn: html.
						html submitButton callback: [self savePreferences]; with: ('Save Preferences' translateIn: self session).
					].
				].
		].