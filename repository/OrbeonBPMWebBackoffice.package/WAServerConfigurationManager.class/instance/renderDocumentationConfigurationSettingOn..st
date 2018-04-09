edit properties
renderDocumentationConfigurationSettingOn: html

	html label attributeAt: 'for' put: 'baseUrl'; with: ('URL Base Documentation' translateFor: self session user).
	html textInput attributeAt: 'id' put: 'baseUrl'; 
			callback: [:value | self getGemStoneServerConfiguration baseUrlDocumentation: value]; 
			with: self getGemStoneServerConfiguration baseUrlDocumentation.

	html submitButton callback: [self savePreferences]; with: ('Save Preferences' translateFor: self session user).