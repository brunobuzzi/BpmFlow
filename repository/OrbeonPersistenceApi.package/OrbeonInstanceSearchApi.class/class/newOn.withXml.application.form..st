other
newOn: anOrbeonSystemManager withXml: xmlString application: anOrbeonApplication form: definition

	^(self newOn: anOrbeonSystemManager withXml: xmlString)
		application: anOrbeonApplication;
		lastFormDefinition: definition;
		parseXmlString;
		yourself