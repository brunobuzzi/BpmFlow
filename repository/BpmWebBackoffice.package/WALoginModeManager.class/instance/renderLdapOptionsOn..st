other
renderLdapOptionsOn: html

	self session systemRoot setLdapFor: 'orbeon-processes-web'.
	html break.
	html label attributeAt: 'for' put: 'ldapIP'; with: ('Ldap IP' translateIn: self session).
	html textInput attributeAt: 'id' put: 'ldapIP'; callback: [:value | self session systemRoot loginModeForProcessWeb ldapIP: value]; 
		with: self session systemRoot ldapIpForWebProcess.
	html label attributeAt: 'for' put: 'dn'; with: ('Base Dn' translateIn: self session).
	html textInput attributeAt: 'id' put: 'dn'; callback: [:value | self session systemRoot loginModeForProcessWeb dn: value]; 
		with: self session systemRoot dnForWebProcess.
	html label attributeAt: 'for' put: 'ou'; with: ('Bind Dn' translateIn: self session).
	html textInput attributeAt: 'id' put: 'ou'; callback: [:value | self session systemRoot loginModeForProcessWeb ou: value]; 
		with: self session systemRoot ouForWebProcess.
	html label attributeAt: 'for' put: 'bindPassword'; with: ('Bind Password' translateIn: self session).
	html textInput attributeAt: 'id' put: 'bindPassword'; callback: [:value | self session systemRoot loginModeForProcessWeb bindPassword: value]; 
		with: self session systemRoot bindPasswordForWebProcess.