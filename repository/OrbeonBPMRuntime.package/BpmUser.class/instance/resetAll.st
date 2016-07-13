other
resetAll
	"Reset all user's inboxes"

	self getCurrentAssigmentsInbox resetMessages.
	self getFinishedAssigmentsInbox resetMessages.
	self getReleasedAssigmentsInbox resetMessages.