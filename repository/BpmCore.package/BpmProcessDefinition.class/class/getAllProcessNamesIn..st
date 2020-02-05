query
getAllProcessNamesIn: appName
	"Answer a collection with all processes names in Application named <appName>"

	^(self defaultApplicationManagerClass applicationNamed: appName ifNone: [^#()]) getAllProcessDefinitionsNames