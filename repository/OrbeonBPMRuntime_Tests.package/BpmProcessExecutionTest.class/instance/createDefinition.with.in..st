forms creation
createDefinition: formName with: definitionMethod in: anOrbeonApplication
	| savedDefinition |

	savedDefinition := OrbeonSavedFormDefinition app: anOrbeonApplication applicationName form: formName.
	savedDefinition id: UUID new asString;
		version: 1;
		title: formName;
		setXmlString: (self getOrbeonWebServerConfiguration orbeonXpathVersion templateClass perform: definitionMethod). "answer a sublcass of <OrbeonFormDefinitionTemplate>"

	anOrbeonApplication addSavedDefinition: savedDefinition.

	savedDefinition definition 
		publish; 
		processXMLDefinition.

	anOrbeonApplication addPublishedDefinition: savedDefinition definition.

	^savedDefinition definition