assignation policy
applyAssignationPolicyIfNoUser: aBlock
	"The receiver force the current assignation policy on all available assignations <BpmTaskAssignment>.
	If no user can be assigned to <aBpmTaskAssignment> then evaluates the niladic block <aBlock>"
	| allAssignments runningTaskMatrix |

	self hasAutomaticTaskAssignation ifTrue: [AutomaticPolicyException signal: 'The current assignation policy is automatic and can not be forced'].

	runningTaskMatrix := self getAvailableProcessMatrix.

	allAssignments := OrderedCollection new.

	roles do: [:frontOfficeRole | 
		allAssignments addAll: (runningTaskMatrix getAvailableTasksFor: frontOfficeRole name).
	].

	allAssignments do: [:assignment | assignationPolicy applyOn: assignment ifNoUser: aBlock]