other
getAllAssignments
	"Answer a collection with all <aBpmTaskAssignment> that are hold by the receiver"
	| allAssignments |

	allAssignments := OrderedCollection new.

	rolesAndAssignment do: [:rcCollection| allAssignments addAll: rcCollection].

	^allAssignments