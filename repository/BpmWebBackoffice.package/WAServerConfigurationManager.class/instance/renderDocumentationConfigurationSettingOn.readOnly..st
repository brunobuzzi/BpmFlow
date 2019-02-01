edit properties
renderDocumentationConfigurationSettingOn: html readOnly: aBoolean

	html label attributeAt: 'for' put: 'baseUrl'; with: ('URL Base Documentation' translateIn: self session).
	html textInput attributeAt: 'id' put: 'baseUrl'; 
			readonly: aBoolean;
			callback: [:value | self getGemStoneServerConfiguration baseUrlDocumentation: value]; 
			with: self getGemStoneServerConfiguration baseUrlDocumentation.

	aBoolean ifFalse: [html submitButton callback: [self savePreferences]; with: ('Save Preferences' translateIn: self session).].