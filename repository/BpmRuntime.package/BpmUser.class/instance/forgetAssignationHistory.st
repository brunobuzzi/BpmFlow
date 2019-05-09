role association
forgetAssignationHistory
	"The receiver remove the history of user assignation. (see issue #851).
	See BpmRole>>forgetAssignationHistory"

	rolesAssociation := Set new

	"this method is used to force BpmRole and Users that are not used any more to be garbage collected.
	if <rolesAssociation> is not empty --> this collection will have a reference to the user and role preventing them to be garbage collected.

	This method has to be used in parallel with BpmRole>>forgetAssignationHistory to remove both references"