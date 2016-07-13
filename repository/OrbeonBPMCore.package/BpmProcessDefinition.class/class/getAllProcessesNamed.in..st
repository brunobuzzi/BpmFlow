query
getAllProcessesNamed: aString in: appName
	"Answer a collection with all versions of process named <aString> in the Application named <appName>"

	^((self cache at: appName ifAbsent: [^#()])
			at: aString ifAbsent: [^#()])