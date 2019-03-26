inbox
getAllCurrentAssignments
	"The receiver answer all current <BpmTaskAssignment>s in all <BpmEnvironment>s.
	This method is intented for TESTING purpose ONLY -do NOT mix environments !!!-"
	| allAssignments |

	allAssignments := Set new.

	self getBpmEnvironments do: [:environment| allAssignments addAll: (self getCurrentAssignmentsIn: environment)].

	^allAssignments