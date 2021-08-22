other
getUrlForOrbeonFormDefinitionNamed: aString
	| definition |

	definition := self session systemRoot formDefinitionNamed: aString in: model applicationName.

	definition ifNil: [^nil].

	^self session systemRoot generateEditUrlForDefinition: definition