other
resetAll
	"Reset all user's inboxes"

	self getBpmEnvironments do: [:environment |
		(self getCurrentAssignmentsInboxIn: environment) removeAll.
		(self getFinishedAssignmentsInboxIn: environment) removeAll.
		(self getReleasedAssignmentsInboxIn: environment) removeAll.
	].

	roles := Set new.