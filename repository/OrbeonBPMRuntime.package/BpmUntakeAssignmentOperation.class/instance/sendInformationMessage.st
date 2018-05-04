action
sendInformationMessage
	| message |

	assignment hasInformedRoles ifFalse: [^self].

	message := BpmAssignmentInternalMessage newFromApplication.

	message to: (assignment getRolesToInformOn: #untake);
		subject: ('Assignment Released in [', assignment processName, ']');
		setValuesFrom: assignment.
	
	message send.