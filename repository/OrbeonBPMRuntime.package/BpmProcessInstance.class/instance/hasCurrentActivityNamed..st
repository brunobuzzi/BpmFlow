execution
hasCurrentActivityNamed: aString
	"Anwer whether or not the receiver has in its collection <currentActivities> a task named <aString>"

	^self getActiveArtifacts anySatisfy: [:each | each getDefinitionName = aString]