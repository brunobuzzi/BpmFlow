other
register: tempUuid object: anObject for: anOrbeonFormUser

	^tokens at: tempUuid put: (self generateXMLFor: anObject for: anOrbeonFormUser)""