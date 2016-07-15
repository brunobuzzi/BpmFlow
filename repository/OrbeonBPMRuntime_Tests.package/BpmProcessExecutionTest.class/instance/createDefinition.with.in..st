execution simulation
createDefinition: formName with: definitionMethod in: anOrbeonApplication
	| savedDefinition |

	savedDefinition := OrbeonSavedFormDefinition app: anOrbeonApplication applicationName form: formName.
	savedDefinition id: UUID new asString;
		version: 1;
		setXmlString: (OrbeonFormDefinitionTemplate perform: definitionMethod).

	anOrbeonApplication addSavedDefinition: savedDefinition.

	savedDefinition definition 
		publish; 
		processXMLDefinition.

	anOrbeonApplication addPublishedDefinition: savedDefinition definition.

	^savedDefinition definition