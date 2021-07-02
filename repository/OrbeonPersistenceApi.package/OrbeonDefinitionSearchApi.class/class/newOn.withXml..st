other
newOn: anOrbeonSystemManager withXml: xmlString

	^(super newOn: anOrbeonSystemManager withXml: xmlString)
		parseXmlString;
		yourself