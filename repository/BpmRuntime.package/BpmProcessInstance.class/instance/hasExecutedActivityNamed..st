tasks
hasExecutedActivityNamed: aString
	"Answer whether or not the receiver has an executed activity named <aString>.
	This method is used in combination with multi-instance option of a task"

	^self getExecutedArtifacts anySatisfy: [:each | each getDefinitionName = aString]