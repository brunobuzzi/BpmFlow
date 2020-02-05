query
getAllProcessesNamed: aString in: appName
	"Answer a collection with all versions of process named <aString> in the Application named <appName>"

	^(self defaultApplicationManagerClass applicationNamed: appName ifNone: [^#()]) getAllProcessesNamed: aString