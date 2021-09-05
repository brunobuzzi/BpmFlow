bpm processes
getAllVersionsIn: appName
	"Answer a collection with all processes and all processes versions in Application named <appName>"

	^(self applicationNamed: appName ifNone: [^#()]) getAllProcessDefinitions