other
sendInformationMessageFor: aBpmTaskAssignment
	| message |

	aBpmTaskAssignment hasInformedRoles ifFalse: [^self].

	message := BpmAssignmentInternalMessage newFromApplicationIn: aBpmTaskAssignment bpmEnvironment.

	message to: (aBpmTaskAssignment rolesToInformOn: #modification);
		subject: ('Assignment Modification in [', aBpmTaskAssignment processName, ']');
		setValuesFrom: aBpmTaskAssignment .
	
	message send.