other
doIt
	| savedDefinition |

	savedDefinition := self defaultSavedFormDefinitionClass new.

	savedDefinition xmlString: xmlString;
		id: id;
		setMetadata; "set: application, formName, title, description"
		version: 1; "when a form is duplicate it always start at version 1"
		updateLastModifiedTime.

	savedDefinition setXmlString: savedDefinition xmlString. "create the associated <OrbeonPublishedFormDefinition>"

	savedDefinition storeInApplication.

	^savedDefinition xmlString