other
canDelete
	"Answer whether or not the receiver can be deleted from the system"
	| definitionsCollection |

	definitionsCollection := self class getAllProcessesNamed: processName in: self applicationName.
	^formFieldInstances isEmpty 
		and: [(definitionsCollection size = version) or:[definitionsCollection size = 0]] 
				"this is to preserve the version number chain unbroken - (only the latest version can be removed)"