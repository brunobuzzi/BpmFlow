external components
linkToOrbeonPdfFor: aBpmArtifactInstance
	| uuid |

	uuid  := BpmOrbeonTempTokenRegistry default 
					createEntryToOrbeonFor: aBpmArtifactInstance 
					for: self session user.

	^self requestContext redirectTo: (self buildPDFUrlFor: aBpmArtifactInstance with: uuid)