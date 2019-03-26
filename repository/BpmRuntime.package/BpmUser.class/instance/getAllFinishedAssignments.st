inbox
getAllFinishedAssignments
	"The receiver answer all finished <BpmTaskAssignment>s in all <BpmEnvironment>s.
	This method is intented for TESTING purpose ONLY -do NOT mix environments !!!-"
	| allAssignments |

	allAssignments := Set new.

	self getBpmEnvironments do: [:environment| allAssignments addAll: (self getFinishedAssignmentsIn: environment)].

	^allAssignments