edit properties
renderDocumentationConfigurationSettingOn: html readOnly: aBoolean

	html label attributeAt: 'for' put: 'baseUrl'; with: ('URL Base Documentation' translateFor: self session user).
	html textInput attributeAt: 'id' put: 'baseUrl'; 
			readonly: aBoolean;
			callback: [:value | self getGemStoneServerConfiguration baseUrlDocumentation: value]; 
			with: self getGemStoneServerConfiguration baseUrlDocumentation.

	aBoolean ifFalse: [html submitButton callback: [self savePreferences]; with: ('Save Preferences' translateFor: self session user).].