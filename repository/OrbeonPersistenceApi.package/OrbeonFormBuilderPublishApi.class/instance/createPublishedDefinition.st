other
createPublishedDefinition
	"The receiver create a new definition <anOrbeonFormDefinition> named <formName> in application <anOrbeonApplication> with id <id>"
	| anOrbeonPublishedDefinition |

	anOrbeonPublishedDefinition := self defaultPublishedFormDefinitionClass newNamed: self getFormName inAppNamed: self getApplicationName.
	anOrbeonPublishedDefinition associateSavedAndPublishedForms.

	^anOrbeonPublishedDefinition "new definition to be published"
		id: id;
		xmlString: xmlString;
		updateLastModifiedTime;
		version: version;
		setTitleAndDescription;
		publish;
		buildForm