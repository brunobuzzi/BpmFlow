options
generateXmlWithAllFormDefinitionsIn: anOrbeonApplication
	| xmlWriter |

	xmlWriter := XMLWriter new.

	xmlWriter writeWith: [:writer | 
		writer tag: 'forms' with: [
			self getFormName
				ifNotNil: [:eachFormName | 
					anOrbeonApplication 
						currentVersionsOf: self getFormName 
						do: [:publishedVersion | self generateXmlNodeForFormBuilderVersionList: publishedVersion with: writer]
				]
				ifNil: [anOrbeonApplication getAllDefinitionsDo: [:publishedVersion | self generateXmlNodeForFormBuilderVersionList: publishedVersion with: writer]]
		].
	].

	^xmlWriter contents