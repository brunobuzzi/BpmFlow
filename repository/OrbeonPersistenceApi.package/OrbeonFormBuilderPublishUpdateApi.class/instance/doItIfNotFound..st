other
doItIfNotFound: aBlock
	| reader |

	(self getFormName isNil or: [self getApplicationName isNil]) ifTrue: [self setApplicationAndFormNameFromXmlString].

	application := self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: appName.

	version := Number fromString: headerVersion.

	publishedFormDefinition := application getDefinitionNamed: formName withVersion: version ifNone: [^aBlock value].

	publishedFormDefinition
					updateLastModifiedTime;
					xmlString: xmlString.

	reader := publishedFormDefinition newFormBuilder.
	"<isAvailable> is set after <xmlString> was set (if not the previous value is picked)"
	publishedFormDefinition isAvailable: reader isAvailable. 
	
	^xmlString