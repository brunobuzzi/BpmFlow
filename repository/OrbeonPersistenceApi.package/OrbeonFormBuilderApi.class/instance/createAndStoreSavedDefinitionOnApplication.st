other
createAndStoreSavedDefinitionOnApplication
	"The receiver creates <anOrbeonSavedFormDefinition> named <formName> in the <OrbeonApplication> named <appName> with version number <version> with id <id> with title <title> with description <description> from XML string <xmlString>.
	In the process it create & associate the <anOrbeonSavedFormDefinition> with <anOrbeonPublishedFormDefinition>"
	| savedDefinition |

	savedDefinition := self createOrbeonSavedDefinition.

	savedDefinition id: id;
		version: version;
		setXmlString: xmlString; "here the <OrbeonPublishedFormDefinition> is created and associate to the receiver <savedDefinition>"
		updateLastModifiedTime;
		setTitleAndDescription;
		yourself.

	savedDefinition storeInApplication. "anOrbeonApplication addSavedDefinition: savedDefinition"

	(self getOrbeonWebServerConfiguration isDefinitionAuditEnableFor: savedDefinition formName in: savedDefinition getApplicationName) 
	ifTrue: [self auditStorage addDefinitionAudit: savedDefinition cloneForAudit].

	^savedDefinition