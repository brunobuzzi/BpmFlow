assignation policy
applyAssignationPolicy
	"The receiver force the current assignation policy on all available assignations <BpmTaskAssignment>"
	| allAssignments runningTaskMatrix |

	self hasAutomaticTaskAssignation ifTrue: [AutomaticPolicyException signal: 'The current assignation policy is automatic and can not be forced'].

	runningTaskMatrix := self getAvailableProcessMatrix.

	allAssignments := OrderedCollection new.

	roles do: [:frontOfficeRole | 
		allAssignments addAll: (runningTaskMatrix getAvailableTasksFor: frontOfficeRole name).
	].

	allAssignments do: [:assignment | assignationPolicy applyOn: assignment ]