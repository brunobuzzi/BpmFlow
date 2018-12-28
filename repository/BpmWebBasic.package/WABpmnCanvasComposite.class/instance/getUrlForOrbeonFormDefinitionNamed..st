other
getUrlForOrbeonFormDefinitionNamed: aString
	| definition |

	definition := self getOrbeonApplicationClass formDefinitionNamed: aString in: model applicationName.

	definition ifNil: [^nil].

	^self getOrbeonWebServerConfiguration orbeonIP, '/orbeon/fr/orbeon/builder/edit/', definition id