task handling
sendAssignment: aBpmTaskAssignment from: currentRoleName to: nextRoleName
	"The receiver send in the matrix the process node <aBpmTaskAssignment> from the current role <currentRoleName> to the next role <nextRoleName>.
	This happend when a task is finished by a user and the next tasks are created based on the process definition.
	If <currentRoleName> is equal to <nextRoleName> nothing should happend"
	| currentCollection nextCollection |

	(currentRoleName = nextRoleName) ifTrue: [^aBpmTaskAssignment].

	currentCollection := rolesAndAssignment at: currentRoleName ifAbsent: [self throwExceptionNoSlotFor: currentRoleName].
	nextCollection := rolesAndAssignment at: nextRoleName ifAbsent: [self throwExceptionNoSlotFor: nextRoleName].

	currentCollection remove: aBpmTaskAssignment 
							ifAbsent: [self throwExceptionNoProcessFoundToMoveFrom: currentRoleName to: nextRoleName].

	^nextCollection add: aBpmTaskAssignment