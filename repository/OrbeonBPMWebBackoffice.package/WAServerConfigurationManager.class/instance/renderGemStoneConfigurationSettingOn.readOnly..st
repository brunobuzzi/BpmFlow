edit properties
renderGemStoneConfigurationSettingOn: html readOnly: aBoolean

	html label attributeAt: 'for' put: 'gemstoneIP'; with: ('GemStone/S IP' translateFor: self session user).
	html textInput attributeAt: 'id' put: 'gemstoneIP'; 
			readonly: aBoolean;
			callback: [:value | self getGemStoneServerConfiguration gemstoneIP: value]; 
			with: self getGemStoneServerConfiguration gemstoneIP.
	html label attributeAt: 'for' put: 'baseUrl'; with: ('Event Monitor Timespan (in seconds)' translateFor: self session user).
	html textInput attributeAt: 'id' put: 'time-span'; 
			readonly: aBoolean;
			callback: [:value | [self getGemStoneServerConfiguration timersTimespan: value] on: Exception do: [:ex |] ]; 
			with: self getGemStoneServerConfiguration timersTimespan.

	aBoolean ifFalse: [html submitButton callback: [self savePreferences]; with: ('Save Preferences' translateFor: self session user).].