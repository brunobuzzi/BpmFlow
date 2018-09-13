other
resetMessagesBoxesAndRoles
	"Reset all user's inboxes, outboxes and roles"

	self getBpmEnvironments do: [:environment |
		(self getCurrentAssignmentsInboxIn: environment) removeAll.
		(self getFinishedAssignmentsInboxIn: environment) removeAll.
		(self getReleasedAssignmentsInboxIn: environment) removeAll.
		(self getSystemNotificationsInboxIn: environment) removeAll.
		(self getUserNotificationsInboxIn: environment) removeAll.
		(self getOutboxFor: environment) removeAll.
	].

	roles do: [:eachRole | eachRole ungrantUser: self]. 

	rolesAssociation := Set new.