process execution
isDone
	"The receiver answer whether or not it'has been finalized.
	Check in collection <executedActivities> of it's process"

	^self process taskIsDone: self