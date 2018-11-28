other
printRunningArtifacts
	| stringRunning |

	stringRunning := ''.
	currentActivities isEmpty ifTrue: [^''].

	currentActivities do: [:each | stringRunning := stringRunning, each getDefinitionName, ' | '].

	^stringRunning allButLast: 3