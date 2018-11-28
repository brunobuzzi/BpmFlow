get artifacts
getOrbeonTaskNames
	"The receiver answer a collection with all names of it's tasks <aBpmTaskDefinition>"

	^self getOrbeonTasks collect: [:each | each name]