other
getXmlNodeForRunnerHome: anOrbeonFormDefinition with: anXMLWriter
	"The receiver create a XML structure to display the definition <anOrbeonFormDefinition> in ../orbeon/fr page"

	anXMLWriter tag: 'form' with: [
		anXMLWriter tag: 'application-name' with: anOrbeonFormDefinition getApplicationName.
		anXMLWriter tag: 'form-name' with: anOrbeonFormDefinition formName.
		anXMLWriter tag: 'form-version' with: anOrbeonFormDefinition printVersion.
		anXMLWriter tag: 'title' with: anOrbeonFormDefinition title.
		anXMLWriter tag: 'description' with: anOrbeonFormDefinition description.
		anXMLWriter tag: 'last-modified-time' with: anOrbeonFormDefinition modifiedTime asOrbeonDateTimeString.
		anXMLWriter tag: 'available' with: anOrbeonFormDefinition isAvailable printString.
	].