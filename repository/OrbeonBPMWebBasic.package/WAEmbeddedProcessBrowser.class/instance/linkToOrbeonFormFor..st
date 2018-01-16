orbeon links
linkToOrbeonFormFor: aBpmArtifactInstance
	"The receiver gives the control to Orbeon Java application."
	| uuid |

	uuid  := OrbeonTempServiceRegistry default 
					createEntryToOrbeonFor: aBpmArtifactInstance 
					for: self session user.

	orbeonFrame := self getUrlFor: aBpmArtifactInstance with: uuid.