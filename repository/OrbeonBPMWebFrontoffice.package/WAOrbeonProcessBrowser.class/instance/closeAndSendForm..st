process
closeAndSendForm: aBpmArtifactInstance
	"After filling the form the user has clicked on close and send.
	The form can not be edited again."

	self session user finalizeAssignment: selectedLateralItem.

	self removeSelectionAndRefreshLateralCollection.