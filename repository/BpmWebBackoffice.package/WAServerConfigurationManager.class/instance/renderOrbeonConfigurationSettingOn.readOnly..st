edit properties
renderOrbeonConfigurationSettingOn: html readOnly: aBoolean

	"This is commented and it has been deprecated: see issue #601"
	"self renderOrbeonDatabaseSettingsOn: html readOnly: aBoolean." 

	html label attributeAt: 'for' put: 'orbeonIP'; with: ('Orbeon IP' translateIn: self session).
	html textInput attributeAt: 'id' put: 'orbeonIP'; 
			readonly: aBoolean;
			callback: [:value | self session systemRoot orbeonIP: value]; 
			with: self session systemRoot orbeonIP.

	html label class: 'margin-right-10px'; attributeAt: 'for' put: 'dataFormatVersion'; with: ('Data Format Version' translateIn: self session).
	html textInput 
			attributeAt: 'id' put: 'dataFormatVersion';
			readonly: true;
			value: self session systemRoot printDataFormatVersionName.

	aBoolean ifFalse: [html submitButton callback: [self savePreferences]; with: ('Save Preferences' translateIn: self session).].