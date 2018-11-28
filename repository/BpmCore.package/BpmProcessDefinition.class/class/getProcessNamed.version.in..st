query
getProcessNamed: aString version: version in: appName
	"Answer <aBpmProcessDefinition> named <aString> with version <version> in the Application named <appName>"

	^(self getAllProcessesNamed: aString in: appName) detect: [:each | each version = version] ifNone: [nil]