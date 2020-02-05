query
getLatestProcessDefinitionNamed: aString in: appName
	"Answer <aBpmProcessDefinition> for process named <aString> in the Application named <appName>"

	^(self defaultApplicationManagerClass applicationNamed: appName ifNone: [^nil]) lastVersionOfProcessNamed: aString ifNone: [nil]