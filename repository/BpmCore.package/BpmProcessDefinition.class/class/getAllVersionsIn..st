query
getAllVersionsIn: appName
	"Answer a collection with all processes and all processes versions in Application named <appName>"

	^(self defaultApplicationManagerClass applicationNamed: appName ifNone: [^#()]) getAllProcessDefinitions