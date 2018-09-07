other
sendInformationMessageFor: aBpmTaskAssignment
	| message |

	aBpmTaskAssignment hasInformedRoles ifFalse: [^self].

	message := BpmAssignmentInternalMessage newFromApplicationIn: aBpmTaskAssignment bpmEnvironment.

	message to: (aBpmTaskAssignment getRolesToInformOn: #modification);
		subject: ('Assignment Modification in [', aBpmTaskAssignment processName, ']');
		setValuesFrom: aBpmTaskAssignment .
	
	message send.