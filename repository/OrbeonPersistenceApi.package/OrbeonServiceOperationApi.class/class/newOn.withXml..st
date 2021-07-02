instance creation
newOn: anOrbeonSystemManager withXml: xmlString

	^self new
		setWorldManager: anOrbeonSystemManager xmlString: xmlString;
		yourself