edit properties
renderOrbeonConfigurationSettingOn: html readOnly: aBoolean

	"This is commented and it has been deprecated: see issue #601"
	"self renderOrbeonDatabaseSettingsOn: html readOnly: aBoolean." 

	html label attributeAt: 'for' put: 'orbeonIP'; with: ('Orbeon IP' translateFor: self session user).
	html textInput attributeAt: 'id' put: 'orbeonIP'; 
			readonly: aBoolean;
			callback: [:value | self getOrbeonWebServerConfiguration orbeonIP: value]; 
			with: self getOrbeonWebServerConfiguration orbeonIP.

	html label class: 'margin-right-10px'; attributeAt: 'for' put: 'versionName'; with: ('XPath Orbeon Version' translateFor: self session user).
	html select 
		disabled: aBoolean;
		attributeAt: 'id' put: 'versionName';
		list: self getOrbeonWebServerConfiguration getOrbeonXpathVersions;
		callback: [:versionName | self setOrbeonVersion: versionName];
		selected: self getOrbeonWebServerConfiguration getOrbeonXpathVersionForCombo.

	aBoolean ifFalse: [html submitButton callback: [self savePreferences]; with: ('Save Preferences' translateFor: self session user).].