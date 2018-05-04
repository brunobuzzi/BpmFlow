assignment
sendInformationMessageFor: aBpmTaskAssignment
	| message |

	aBpmTaskAssignment hasInformedRoles ifFalse: [^self].

	message := BpmAssignmentInternalMessage newFromApplication.

	message to: (aBpmTaskAssignment getRolesToInformOn: #creation);
		subject: ('Assignment Creation in [', aBpmTaskAssignment processName, ']');
		setValuesFrom: aBpmTaskAssignment.
	
	message send.