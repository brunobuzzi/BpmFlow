edit properties
renderDocumentationConfigurationSettingOn: html readOnly: aBoolean

	html label attributeAt: 'for' put: 'baseUrl'; with: ('URL Base Documentation' translateIn: self session).
	html textInput attributeAt: 'id' put: 'baseUrl'; 
			readonly: aBoolean;
			callback: [:value | self session systemRoot baseUrlDocumentation: value]; 
			with: self session systemRoot baseUrlDocumentation.

	aBoolean ifFalse: [html submitButton callback: [self savePreferences]; with: ('Save Preferences' translateIn: self session).].