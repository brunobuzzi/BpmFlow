assignation
applyOn: aBpmTaskAssignment
	"The receiver automatically assign <aBpmTaskAssignment> to the most fit <BpmUser>.
	If no user can be assigned to <aBpmTaskAssignment> then raise <aNoUserAvailableException> exception"

	^self applyOn: aBpmTaskAssignment ifNoUser: [NoUserAvailableException signal: 'No user available to take task [', aBpmTaskAssignment taskName, ']']