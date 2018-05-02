assignment
sendInformationMessageFor: aBpmTaskAssignment
	| message |

	aBpmTaskAssignment hasInformedRoles ifFalse: [^self].

	message := BpmInternalMessage newFromApplication.

	message to: (aBpmTaskAssignment getRolesToInformOn: #creation);
		subject: ('Assignment Creation in [', aBpmTaskAssignment processName, ']');
		body: aBpmTaskAssignment createMessageBody.
	
	message send.