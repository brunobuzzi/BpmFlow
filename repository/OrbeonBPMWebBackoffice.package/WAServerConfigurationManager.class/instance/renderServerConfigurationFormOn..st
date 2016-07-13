other
renderServerConfigurationFormOn: html

	html form with: [
		html fieldSet with:[
			html legend with: [html strong: ('Servers Configuration' translateFor: self session user)].
					self renderServerConfigurationSettingOn: html.
					].
				].