get artifacts
getTaskNames
	"The receiver answer a collection with all names of it's tasks <aBpmTaskDefinition>"

	^self getTasks collect: [:each | each name]