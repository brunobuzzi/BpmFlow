task handling
addTasks: collectionOfTasks
	"The receiver create an asignment for each task in <collectionOfTasks> to be listed as available for the users"

	^collectionOfTasks do: [:each | self addTask: each]