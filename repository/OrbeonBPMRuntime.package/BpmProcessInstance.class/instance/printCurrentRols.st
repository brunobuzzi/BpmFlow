other
printCurrentRols
	| currentRols |

	currentActivities ifEmpty: [^''].

	currentRols := ''.
	currentActivities do: [:each | currentRols := currentRols, each printRoleNames, ' | '].

	^currentRols allButLast: 3.