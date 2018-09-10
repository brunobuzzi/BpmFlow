responsibility
removeCurrentTaskAssigmentsFrom: aBpmUser
	"The user <aBpmUser> is going to be removed from the receiver. 
	If <aBpmUser> has an unfinished task that is defined for the receiver then these assigment are removed from <aBpmUser>."
	| currentAssignments |

	currentAssignments := (aBpmUser getCurrentAssignmentsIn: self bpmEnvironment) select: [:each | (each application == application) and: [each roleName = name]].

	(currentAssignments select: [:taskAssignment | taskAssignment canUntakeFromCurrentUser]) do: [:taskAssignment | | tempCanUnassign |
		tempCanUnassign := taskAssignment canUnassign.
		taskAssignment canUnassign: true. "force the assignment to be untaken by <aBpmUser>"
		aBpmUser untake: taskAssignment.
		taskAssignment canUnassign: tempCanUnassign]