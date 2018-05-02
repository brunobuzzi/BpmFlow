action
sendInformationMessage
	| message |

	assignment hasInformedRoles ifFalse: [^self].

	message := BpmInternalMessage newFromApplication.

	message to: (assignment getRolesToInformOn: #take);
		subject: ('Assignment Taken in [', assignment processName, ']');
		body: assignment createMessageBody.
	
	message send.