other
renderServerConfigurationViewOn: html

	html label with: 'Database IP'.
	html textInput 
		callback: [:value | self getOrbeonDatabaseConfiguration databaseIP: value]; 
		readonly: true; 
		with: self getOrbeonDatabaseConfiguration databaseIP.
	html label with: 'Database User'.
	html textInput 
		callback: [:value | self getOrbeonDatabaseConfiguration databaseUser: value]; 
		readonly: true; 
		with: self getOrbeonDatabaseConfiguration databaseUser.
	html label with: 'Database Password'.
	html textInput 
		callback: [:value | self getOrbeonDatabaseConfiguration databasePassword: value]; 
		readonly: true; 
		with: self getOrbeonDatabaseConfiguration databasePassword.
	html label with: 'Orbeon IP'.
	html textInput 
		callback: [:value | self getOrbeonWebServerConfiguration orbeonIP: value]; 
		readonly: true; 
		with: self getOrbeonWebServerConfiguration orbeonIP.
	html label with: 'GemStone/S IP'.
	html textInput 
		callback: [:value | self getGemStoneServerConfiguration gemstoneIP: value]; 
		readonly: true; 
		with: self getGemStoneServerConfiguration gemstoneIP.
	html textInput attributeAt: 'id' put: 'baseUrl'; 
			callback: [:value | self getGemStoneServerConfiguration baseUrlDocumentation: value]; 
			readonly: true; 
			with: self getGemStoneServerConfiguration baseUrlDocumentation.
	html textInput attributeAt: 'id' put: 'time-span'; 
			callback: [:value | self getGemStoneServerConfiguration timersTimespan: value]; 
			readonly: true; 
			with: self getGemStoneServerConfiguration timersTimespan.