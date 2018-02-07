link to components
linkToOrbeonPdfFor: aBpmArtifactInstance
	| uuid |

	uuid  := OrbeonTempServiceRegistry default 
					createEntryToOrbeonFor: aBpmArtifactInstance 
					for: self session user.

	^self requestContext redirectTo: (self buildPDFUrlFor: aBpmArtifactInstance with: uuid)