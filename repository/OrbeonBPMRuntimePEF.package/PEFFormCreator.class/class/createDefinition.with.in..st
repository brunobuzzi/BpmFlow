other
createDefinition: formName with: definitionMethod in: anOrbeonApplication
	"The receiver create the pair <OrbeonSavedFormDefinition> & <OrbeonPublishedFormDefinition> for as form named <formName> in application <anOrbeonApplication>.
	The current template class lookup the form's source using the symbol method <definitionMethod>"
	| savedDefinition |

	savedDefinition := OrbeonSavedFormDefinition app: anOrbeonApplication applicationName form: formName.
	savedDefinition id: UUID new asString;
		version: 1;
		title: formName.
	"an instance of <OrbeonPublishedFormDefinition> is created here"
	savedDefinition setXmlString: (self getOrbeonWebServerConfiguration orbeonXpathVersion templateClass perform: definitionMethod). 

	anOrbeonApplication addSavedDefinition: savedDefinition.

	savedDefinition definition 
		publish; 
		processXMLDefinition.

	anOrbeonApplication addPublishedDefinition: savedDefinition definition.

	^savedDefinition definition