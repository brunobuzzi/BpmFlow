edit properties
renderOrbeonConfigurationSettingOn: html readOnly: aBoolean

	html label attributeAt: 'for' put: 'databaseIP'; with: ('Database IP' translateFor: self session user).
	html textInput attributeAt: 'id' put: 'databaseIP'; 
			readonly: aBoolean;
			callback: [:value | self getOrbeonDatabaseConfiguration databaseIP: value]; 
			with: self getOrbeonDatabaseConfiguration databaseIP.
	html label attributeAt: 'for' put: 'databaseUser'; with: ('Database User' translateFor: self session user).
	html textInput attributeAt: 'id' put: 'databaseUser'; 
			readonly: aBoolean;
			callback: [:value | self getOrbeonDatabaseConfiguration databaseUser: value]; 
			with: self getOrbeonDatabaseConfiguration databaseUser.
	html label attributeAt: 'for' put: 'databasePassword'; with: ('Database Password' translateFor: self session user).
	html textInput attributeAt: 'id' put: 'databasePassword'; 
			readonly: aBoolean;
			callback: [:value | self getOrbeonDatabaseConfiguration databasePassword: value]; 
			with: self getOrbeonDatabaseConfiguration databasePassword.
	html label attributeAt: 'for' put: 'orbeonIP'; with: ('Orbeon IP' translateFor: self session user).
	html textInput attributeAt: 'id' put: 'orbeonIP'; 
			readonly: aBoolean;
			callback: [:value | self getOrbeonWebServerConfiguration orbeonIP: value]; 
			with: self getOrbeonWebServerConfiguration orbeonIP.

	html label class: 'margin-right-10px'; attributeAt: 'for' put: 'versionName'; with: ('Version Name' translateFor: self session user).
	html select 
		disabled: aBoolean;
		attributeAt: 'id' put: 'versionName';
		list: self getOrbeonWebServerConfiguration getOrbeonXpathVersions;
		callback: [:versionName | self setOrbeonVersion: versionName];
		selected: self getOrbeonWebServerConfiguration getOrbeonXpathVersionForCombo.

	aBoolean ifFalse: [html submitButton callback: [self savePreferences]; with: ('Save Preferences' translateFor: self session user).].