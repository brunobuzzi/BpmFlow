other
resetAll
	"Reset all user's inboxes"

	self getCurrentAssignmentsInbox resetMessages.
	self getFinishedAssignmentsInbox resetMessages.
	self getReleasedAssignmentsInbox resetMessages.

	roles := Set new.