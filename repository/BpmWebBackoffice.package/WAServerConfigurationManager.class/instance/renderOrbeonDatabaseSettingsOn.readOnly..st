edit properties
renderOrbeonDatabaseSettingsOn: html readOnly: aBoolean

	html label attributeAt: 'for' put: 'databaseIP'; with: ('Database IP' translateIn: self session).
	html textInput attributeAt: 'id' put: 'databaseIP'; 
			readonly: aBoolean;
			callback: [:value | self getOrbeonDatabaseConfiguration databaseIP: value]; 
			with: self getOrbeonDatabaseConfiguration databaseIP.
	html label attributeAt: 'for' put: 'databaseUser'; with: ('Database User' translateIn: self session).
	html textInput attributeAt: 'id' put: 'databaseUser'; 
			readonly: aBoolean;
			callback: [:value | self getOrbeonDatabaseConfiguration databaseUser: value]; 
			with: self getOrbeonDatabaseConfiguration databaseUser.
	html label attributeAt: 'for' put: 'databasePassword'; with: ('Database Password' translateIn: self session).
	html textInput attributeAt: 'id' put: 'databasePassword'; 
			readonly: aBoolean;
			callback: [:value | self getOrbeonDatabaseConfiguration databasePassword: value]; 
			with: self getOrbeonDatabaseConfiguration databasePassword.