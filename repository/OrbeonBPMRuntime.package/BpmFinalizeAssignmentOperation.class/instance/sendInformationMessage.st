action
sendInformationMessage
	| message |

	assignment hasInformedRoles ifFalse: [^self].

	message := BpmAssignmentInternalMessage newFromApplication.

	message to: (assignment getRolesToInformOn: #finalization);
		subject: ('Assignment Finalization in [', assignment processName, ']');
		setValuesFrom: assignment.
	
	message send.