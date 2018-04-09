edit properties
renderServerConfigurationFormOn: html

	html div class: 'centered-unique-form float-left'; with: [
		html form with: [
			html fieldSet with:[
				html legend with: [html strong: ('GemStone Configuration' translateFor: self session user)].
				self renderGemStoneConfigurationSettingOn: html.
			].
		].
	].
	html div class: 'centered-unique-form float-left'; with: [
		html form with: [
			html fieldSet with:[
				html legend with: [html strong: ('Orbeon Configuration' translateFor: self session user)].
				self renderOrbeonConfigurationSettingOn: html.
			].
		].
	].
	html div class: 'centered-unique-form float-left'; with: [
		html form with: [
			html fieldSet with:[
				html legend with: [html strong: ('Documentation Configuration' translateFor: self session user)].
				self renderDocumentationConfigurationSettingOn: html.
			].
		].
	].