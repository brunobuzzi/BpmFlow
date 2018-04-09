other
renderContentOn: html

	html div id: 'server-configuration'; with: [
		self session user isBackofficeUserAndAdmin 
		ifTrue: [self renderServerConfigurationFormOn: html]
		ifFalse: [self renderServerConfigurationViewOn: html].
	]