other
getExecutedActivityNamed: aString ifNone: aBlock
	"Answer the executed activity named <aString> if none evaluate the zero argument block <aBlock>.
	The #reverse is used because the activity could be executed more than two times --> the last in the collection must be reached first (is the last execution)."

	^self getExecutedArtifacts reverse detect: [:each | each getDefinitionName = aString] ifNone: aBlock