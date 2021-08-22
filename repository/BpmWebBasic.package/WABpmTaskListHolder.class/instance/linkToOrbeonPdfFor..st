external components
linkToOrbeonPdfFor: aBpmArtifactInstance
	| uuid |

	uuid  := self session systemRoot	createEntryToOrbeonFor: aBpmArtifactInstance for: self session user.

	^self requestContext redirectTo: (self buildPDFUrlFor: aBpmArtifactInstance with: uuid)