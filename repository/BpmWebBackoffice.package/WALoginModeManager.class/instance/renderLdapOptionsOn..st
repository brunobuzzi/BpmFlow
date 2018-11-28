other
renderLdapOptionsOn: html

	self getGemStoneServerConfiguration setLdapFor: 'orbeon-processes-web'.
	html break.
	html label attributeAt: 'for' put: 'ldapIP'; with: ('Ldap IP' translateFor: self session user).
	html textInput attributeAt: 'id' put: 'ldapIP'; callback: [:value | self getGemStoneServerConfiguration loginModeForProcessWeb ldapIP: value]; 
		with: self getGemStoneServerConfiguration ldapIpForWebProcess.
	html label attributeAt: 'for' put: 'dn'; with: ('Base Dn' translateFor: self session user).
	html textInput attributeAt: 'id' put: 'dn'; callback: [:value | self getGemStoneServerConfiguration loginModeForProcessWeb dn: value]; 
		with: self getGemStoneServerConfiguration dnForWebProcess.
	html label attributeAt: 'for' put: 'ou'; with: ('Bind Dn' translateFor: self session user).
	html textInput attributeAt: 'id' put: 'ou'; callback: [:value | self getGemStoneServerConfiguration loginModeForProcessWeb ou: value]; 
		with: self getGemStoneServerConfiguration ouForWebProcess.
	html label attributeAt: 'for' put: 'bindPassword'; with: ('Bind Password' translateFor: self session user).
	html textInput attributeAt: 'id' put: 'bindPassword'; callback: [:value | self getGemStoneServerConfiguration loginModeForProcessWeb bindPassword: value]; 
		with: self getGemStoneServerConfiguration bindPasswordForWebProcess.