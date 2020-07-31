action
sendInformationMessage
	| message |

	assignment hasInformedRoles ifFalse: [^self].

	message := BpmAssignmentInternalMessage newFromApplicationIn: self bpmEnvironment.

	message to: (assignment rolesToInformOn: #finalization);
		subject: ('Assignment Finalization in [', assignment processName, ']');
		setValuesFrom: assignment.
	
	message send.