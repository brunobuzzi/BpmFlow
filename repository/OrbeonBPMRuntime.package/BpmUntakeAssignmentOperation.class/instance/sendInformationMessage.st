action
sendInformationMessage
	| message |

	assignment hasInformedRoles ifFalse: [^self].

	message := BpmInternalMessage newFromApplication.

	message to: (assignment getRolesToInformOn: #untake);
		subject: ('Assignment Released in [', assignment processName, ']');
		body: assignment createMessageBody.
	
	message send.