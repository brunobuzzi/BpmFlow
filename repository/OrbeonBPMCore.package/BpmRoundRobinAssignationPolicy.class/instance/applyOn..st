assignation
applyOn: aBpmTaskAssignment
	"The receiver automatically assign <aBpmTaskAssignment> to the most fit <BpmUser>"
	| possibleUsers sortedCollection |

	possibleUsers := BpmUser getAvailableUsersToTake: aBpmTaskAssignment.

	sortedCollection := assignmentsByRole at: aBpmTaskAssignment roleName ifAbsent: [SortedCollection sortBlock: [:a :b | a count <= b count]].