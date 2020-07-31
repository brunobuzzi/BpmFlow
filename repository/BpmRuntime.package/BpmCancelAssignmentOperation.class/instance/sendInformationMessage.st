action
sendInformationMessage
	| message |

	assignment hasInformedRoles ifFalse: [^self].

	message := BpmAssignmentInternalMessage newFromApplicationIn: self bpmEnvironment.

	message to: (assignment rolesToInformOn: #cancelation);
		subject: ('Assignment Canceled in [', assignment processName, ']');
		setValuesFrom: assignment.
	
	message send.