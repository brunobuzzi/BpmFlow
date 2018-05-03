other
resetAll
	"Reset all user's inboxes"

	self getCurrentAssignmentsInbox removeAll.
	self getFinishedAssignmentsInbox removeAll.
	self getReleasedAssignmentsInbox removeAll.

	roles := Set new.