external components
linkToOrbeonFormFor: aBpmArtifactInstance
	"The receiver gives the control to Orbeon Java application."
	| uuid |

	uuid  := self session systemRoot createEntryToOrbeonFor: aBpmArtifactInstance for: self session user.

	^self requestContext redirectTo: (self getUrlFor: aBpmArtifactInstance with: uuid).