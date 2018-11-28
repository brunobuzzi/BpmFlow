assignation policy
applyAssignationPolicy
	"The receiver force the current assignation policy on all available assignations <BpmTaskAssignment>.
	If no user can be assigned to <aBpmTaskAssignment> then raise <aNoUserAvailableException> exception"

	^self applyAssignationPolicyIfNoUser: [NoUserAvailableException signal: 'There are no available user for a <aBpmTaskAssignment>']