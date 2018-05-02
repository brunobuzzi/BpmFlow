action
sendInformationMessage
	| message |

	assignment hasInformedRoles ifFalse: [^self].

	message := BpmInternalMessage newFromApplication.

	message to: (assignment getRolesToInformOn: #finalization);
		subject: ('Assignment Finalization in [', assignment processName, ']');
		body: assignment createMessageBody.
	
	message send.