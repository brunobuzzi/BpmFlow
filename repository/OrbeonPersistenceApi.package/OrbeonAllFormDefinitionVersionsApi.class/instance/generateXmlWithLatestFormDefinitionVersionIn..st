options
generateXmlWithLatestFormDefinitionVersionIn: anOrbeonApplication
	| xmlWriter |

	xmlWriter := XMLWriter new.

	xmlWriter writeWith: [:writer | 
		writer tag: 'forms' with: [
			self getFormName
				ifNotNil: [:eachFormName | self generateXmlNodeForFormBuilderVersionList: (anOrbeonApplication definitionNamed: eachFormName ifNone: [^'<form/>']) with: xmlWriter]
				ifNil: [anOrbeonApplication getLastDefinitionsDo: [:formDefinition | self generateXmlNodeForFormBuilderVersionList: formDefinition with: xmlWriter]]
		].
	].

	^xmlWriter contents