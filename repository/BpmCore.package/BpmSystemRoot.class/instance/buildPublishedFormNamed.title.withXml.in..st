orbeon
buildPublishedFormNamed: formName title: title withXml: xmlDefinition in: anOrbeonApplication

	^self orbeonManager 
				buildPublishedFormNamed: formName 
				title: title 
				withXml: xmlDefinition 
				in: anOrbeonApplication