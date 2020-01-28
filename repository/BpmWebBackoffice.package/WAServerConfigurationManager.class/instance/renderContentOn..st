other
renderContentOn: html

	html div id: 'server-configuration'; with: [
		self renderServerConfigurationFormOn: html readOnly: (self session user isBackofficeUserAndAdminIn: self defaultEnvironmentClass getAdminsEnvironment) not
	]