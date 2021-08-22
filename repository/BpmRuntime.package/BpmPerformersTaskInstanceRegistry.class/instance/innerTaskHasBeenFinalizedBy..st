other
innerTaskHasBeenFinalizedBy: aBpmUser
	"Answer whether or not the user <aBpmUser> has finalized his part as performer of the task.
	Only applicable to tasks with performers"

	^(usersWhoWorked indexOf: aBpmUser ifAbsent: [^false]) = finalizedPerformerCounter