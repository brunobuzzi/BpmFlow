other
renderServerConfigurationFormOn: html readOnly: aBoolean

	html div class: 'centered-unique-form float-left'; with: [
		html form with: [
			html fieldSet with:[
				html legend with: [html strong: ('GemStone Configuration' translateIn: self session)].
				self renderGemStoneConfigurationSettingOn: html readOnly: aBoolean.
			].
		].
	].
	html div class: 'centered-unique-form float-left'; with: [
		html form with: [
			html fieldSet with:[
				html legend with: [html strong: ('Orbeon Configuration' translateIn: self session)].
				self renderOrbeonConfigurationSettingOn: html readOnly: aBoolean.
			].
		].
	].
	html div class: 'centered-unique-form float-left'; with: [
		html form with: [
			html fieldSet with:[
				html legend with: [html strong: ('Documentation Configuration' translateIn: self session)].
				self renderDocumentationConfigurationSettingOn: html readOnly: aBoolean.
			].
		].
	].