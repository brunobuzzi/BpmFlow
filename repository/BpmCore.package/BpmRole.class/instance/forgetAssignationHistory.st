responsibility
forgetAssignationHistory
	"The receiver remove the history of user assignation. (see issue #851).
	See BpmUser>>forgetAssignationHistory"

	usersAssociations := Set new

	"this method is used to force BpmRole and Users that are not used any more to be garbage collected.
	if <usersAssociations> is not empty --> this collection will have a reference to the user and role preventing them to be garbage collected.

	This method has to be used in parallel with BpmUser>>forgetAssignationHistory to remove both references"