other
linkToOrbeonFormFor: aBpmArtifactInstance
	"The receiver gives the control to Orbeon Java application."
	| uuid |

	uuid  := BpmOrbeonTempTokenRegistry default 
					createEntryToOrbeonFor: aBpmArtifactInstance 
					for: self session user.

	^self requestContext redirectTo: (self getUrlFor: aBpmArtifactInstance with: uuid).