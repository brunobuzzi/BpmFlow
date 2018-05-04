action
sendInformationMessage
	| message |

	assignment hasInformedRoles ifFalse: [^self].

	message := BpmAssignmentInternalMessage newFromApplication.

	message to: (assignment getRolesToInformOn: #take);
		subject: ('Assignment Taken in [', assignment processName, ']');
		setValuesFrom: assignment.
	
	message send.