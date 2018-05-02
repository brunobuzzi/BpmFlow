other
sendInformationMessageFor: aBpmTaskAssignment
	| message |

	aBpmTaskAssignment hasInformedRoles ifFalse: [^self].

	message := BpmInternalMessage newFromApplication.

	message to: (aBpmTaskAssignment getRolesToInformOn: #modification);
		subject: ('Assignment Modification in [', aBpmTaskAssignment processName, ']');
		body: aBpmTaskAssignment createMessageBody.
	
	message send.