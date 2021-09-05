bpm processes
getProcessDefinitionWith: id in: appName
	"Answer <aBpmProcessDefintion> with id <id> in Application named <appName>"

	^(self getAllVersionsIn: appName) detect: [:each | each id = id] ifNone: [nil]