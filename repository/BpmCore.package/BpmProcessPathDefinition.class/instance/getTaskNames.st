other
getTaskNames
	"The receiver answer a collection with all names of it's tasks <aBpmTaskDefinition>"

	^tasks collect: [:each | each name]