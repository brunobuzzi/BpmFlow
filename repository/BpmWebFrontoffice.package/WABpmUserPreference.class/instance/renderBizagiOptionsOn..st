bizagi colors
renderBizagiOptionsOn: html

	html div id: 'user-preferences'; class: 'centered-unique-form float-left';
		with: [html form with: [
					html fieldSet with:[
						html legend with: [html strong: ('Bizagi Export Colors' translateFor: self session user)].
						self renderBizagiExportBackcolorsOn: html.
						html submitButton callback: [self savePreferences]; with: ('Save Preferences' translateFor: self session user).
					].
				].
		].