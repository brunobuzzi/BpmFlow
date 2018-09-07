action
sendInformationMessage
	| message |

	assignment hasInformedRoles ifFalse: [^self].

	message := BpmAssignmentInternalMessage newFromApplicationIn: self bpmEnvironment.

	message to: (assignment getRolesToInformOn: #take);
		subject: ('Assignment Taken in [', assignment processName, ']');
		setValuesFrom: assignment.
	
	message send.