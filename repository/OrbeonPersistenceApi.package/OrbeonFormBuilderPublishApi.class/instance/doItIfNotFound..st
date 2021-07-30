other
doItIfNotFound: aBlock
	"The receiver publish the form named <formName> in application named <app> with id <id> title <title> description <description> and xml <xmlString>. 
	The version of the form is in <headerVersion> - orbeon parameter.
	* Calculate the version number & create <anOrbeonSavedFormDefinition> 
	* Compare latest published version with the new one --> [update the current |or| add the new one]"
	| latestSavedDefinition existingVersion |

	(self getFormName isNil or: [self getApplicationName isNil]) ifTrue: [self setApplicationAndFormNameFromXmlString].

	application := systemRoot getExistingApplicationOrCreateNewNamed: appName.

	version := (headerVersion = 'next') 
							ifTrue: [(application getLastFormDefinitionVersionOf: formName) + 1]
							ifFalse: [Number fromString: headerVersion].

	latestSavedDefinition := systemRoot getLatestSavedDefinition: formName app: appName ifNone: [nil].
	"is there a form definition with <formName> in application <appName> & the document_id <id> are different ??? 
	--> if <true> --> creation NOT allowed"

	(self isCreationRejectedFor: latestSavedDefinition)
	ifFalse: [self ifRequiredUpdateForm] "if the <formName> or <appName> has been changed"
	ifTrue: [^AlreadyExistApplicationOrFormNameException signal: 'Not allowed to save [', formName,'] in application [', appName, ']'].

	publishedFormDefinition := self createPublishedDefinition.

	(headerVersion = 'next') ifTrue: [publishedFormDefinition storeInApplication. ^self]. "is a new definition --> is added as published"

	existingVersion := application definitionNamed: publishedFormDefinition formName version: version ifNone: [^aBlock value].
	(self shouldCreateAnotherVersionFor: publishedFormDefinition)
	ifFalse: ["the current published definition is updated"
				existingVersion "get the last existing definition and discard <publishedFormDefinition>"
					definition: publishedFormDefinition definition;  "set the new saved definition to <existingVersion> - see issue #210" 
					updateLastModifiedTime;
					version: publishedFormDefinition version;
					xmlString: xmlString;
					publish;
					buildForm] 
	ifTrue: [application replaceCurrentDefinition: existingVersion with: publishedFormDefinition]