action
sendInformationMessage
	| message |

	assignment hasInformedRoles ifFalse: [^self].

	message := BpmAssignmentInternalMessage newFromApplicationIn: self bpmEnvironment.

	message to: (assignment rolesToInformOn: #untake);
		subject: ('Assignment Released in [', assignment processName, ']');
		setValuesFrom: assignment.
	
	message send.