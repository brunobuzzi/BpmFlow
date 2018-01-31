responsibility
removeCurrentTaskAssigmentsFor: aBpmUser
	"The user <aBpmUser> is going to be removed from the receiver. 
	If <aBpmUser> has an unfinished task that is defined for the receiver then these assigment are removed from <aBpmUser>."
	| currentAssignments |

	currentAssignments := aBpmUser getCurrentAssigments select: [:each | (each application == application) and: [each roleName = name]].

	currentAssignments do: [:taskAssignment | | tempCanUnassign |
		tempCanUnassign := taskAssignment canUnassign.
		taskAssignment canUnassign: true. "force the assignment remove"
		aBpmUser untake: taskAssignment.
		taskAssignment canUnassign: tempCanUnassign]