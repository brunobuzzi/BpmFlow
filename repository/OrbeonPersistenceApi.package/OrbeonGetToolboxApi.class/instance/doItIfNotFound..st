other
doItIfNotFound: aBlock
	"This method is called by Orbeon when the Form Builder is about to be Opened.
	It show the available -Library- forms for the application named <appName> "
	| application latestDefinition |

	application := self getOrbeonApplicationClass applicationNamed: self getApplicationName ifNone: [^aBlock value].

	version := headerValue ifNil: [application getLastFormDefinitionVersionOf: 'library'] ifNotNil: [Number fromString: headerValue].

	latestDefinition := application getSavedDefinition: 'library' version: version ifNone: [^aBlock value].
	latestDefinition isDeleted ifTrue: [^aBlock value].

	^latestDefinition xmlString