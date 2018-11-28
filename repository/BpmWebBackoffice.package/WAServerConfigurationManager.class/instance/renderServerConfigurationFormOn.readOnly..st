other
renderServerConfigurationFormOn: html readOnly: aBoolean

	html div class: 'centered-unique-form float-left'; with: [
		html form with: [
			html fieldSet with:[
				html legend with: [html strong: ('GemStone Configuration' translateFor: self session user)].
				self renderGemStoneConfigurationSettingOn: html readOnly: aBoolean.
			].
		].
	].
	html div class: 'centered-unique-form float-left'; with: [
		html form with: [
			html fieldSet with:[
				html legend with: [html strong: ('Orbeon Configuration' translateFor: self session user)].
				self renderOrbeonConfigurationSettingOn: html readOnly: aBoolean.
			].
		].
	].
	html div class: 'centered-unique-form float-left'; with: [
		html form with: [
			html fieldSet with:[
				html legend with: [html strong: ('Documentation Configuration' translateFor: self session user)].
				self renderDocumentationConfigurationSettingOn: html readOnly: aBoolean.
			].
		].
	].