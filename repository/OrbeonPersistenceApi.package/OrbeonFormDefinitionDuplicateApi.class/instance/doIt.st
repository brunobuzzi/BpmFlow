other
doIt
	| savedDefinition builder |

	builder := systemRoot newFormBuilderFor: xmlString.
	appName := builder getApplicationName.
	formName := builder getFormName.
	
	savedDefinition := self defaultSavedFormDefinitionClass newNamed: formName in: (systemRoot getExistingApplicationOrCreateNewNamed: appName).

	savedDefinition xmlString: xmlString;
		id: id;
		setTitleAndDescriptionWith: builder;
		version: 1; "when a form is duplicate it always start at version 1"
		updateLastModifiedTime.

	savedDefinition setXmlString: savedDefinition xmlString. "create the associated <OrbeonPublishedFormDefinition>"

	savedDefinition storeInApplication.

	^savedDefinition xmlString