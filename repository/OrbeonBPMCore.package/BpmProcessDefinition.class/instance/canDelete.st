other
canDelete
	"Answer whether or not the receiver can be deleted from the system"

	^formFieldInstances isEmpty 
		and: [(self class getAllProcessesNamed: processName in: self applicationName) size = version] 
				"this is to preserve the version number chain unbroken - (only the latest version can be removed)"