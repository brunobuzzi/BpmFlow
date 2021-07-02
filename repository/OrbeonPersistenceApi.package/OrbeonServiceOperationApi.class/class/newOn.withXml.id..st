instance creation
newOn: anOrbeonSystemManager withXml: xmlString id: id

	^self new
		setWorldManager: anOrbeonSystemManager xmlString: xmlString id: id;
		yourself