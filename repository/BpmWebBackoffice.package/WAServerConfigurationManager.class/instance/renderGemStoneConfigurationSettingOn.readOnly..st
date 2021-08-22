edit properties
renderGemStoneConfigurationSettingOn: html readOnly: aBoolean

	html label attributeAt: 'for' put: 'gemstoneIP'; with: ('GemStone/S IP' translateIn: self session).
	html textInput attributeAt: 'id' put: 'gemstoneIP'; 
			readonly: aBoolean;
			callback: [:value | self session systemRoot gemstoneIP: value]; 
			with: self session systemRoot gemstoneIP.
	html label attributeAt: 'for' put: 'baseUrl'; with: ('Event Monitor Timespan (in seconds)' translateIn: self session).
	html textInput attributeAt: 'id' put: 'time-span'; 
			readonly: aBoolean;
			callback: [:value | [self session systemRoot timersTimespan: value] on: Exception do: [:ex |] ]; 
			with: self session systemRoot timersTimespan.

	aBoolean ifFalse: [html submitButton callback: [self savePreferences]; with: ('Save Preferences' translateIn: self session).].