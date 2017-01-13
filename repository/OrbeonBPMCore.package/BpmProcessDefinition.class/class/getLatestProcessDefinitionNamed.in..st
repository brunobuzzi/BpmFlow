query
getLatestProcessDefinitionNamed: aString in: appName
	"Answer <aBpmProcessDefinition> for process named <aString> in the Application named <appName>"

	^((self cache at: appName ifAbsent: [^nil])
			at: aString ifAbsent: [^nil]) last