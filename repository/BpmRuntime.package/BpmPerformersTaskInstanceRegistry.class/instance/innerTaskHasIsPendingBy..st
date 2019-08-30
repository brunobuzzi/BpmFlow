other
innerTaskHasIsPendingBy: aBpmUser
	"Answer whether or not the user <aBpmUser> has a pending inner task as performer of this task.
	Only applicable to tasks with performers"

	^(self innerTaskHasBeenFinalizedBy: aBpmUser) not