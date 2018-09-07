assignment
sendInformationMessageFor: aBpmTaskAssignment
	| message |

	aBpmTaskAssignment hasInformedRoles ifFalse: [^self].

	message := BpmAssignmentInternalMessage newFromApplicationIn: self bpmEnvironment.

	message to: (aBpmTaskAssignment getRolesToInformOn: #creation);
		subject: ('Assignment Creation in [', aBpmTaskAssignment processName, ']');
		setValuesFrom: aBpmTaskAssignment.
	
	message send.