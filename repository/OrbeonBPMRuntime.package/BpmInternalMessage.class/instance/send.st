message
send
	"The receiver store itself in each inbox of users contained in collection <to>"
	| recipients |

	sentTime := TimeStamp now.

	recipients := self getRecipients.

	self isUserMessage ifTrue: [from outbox acceptEntry: self].
	recipients do: [:eachUser | (eachUser getInboxFor: bpmEnvironment withCategory:category) acceptEntry: self]. "this need DOUBLE DISPATCHING to use other inbox not only system notifications"

	sendExternalMail ifTrue: [self sendExternalMailToRecipients: recipients]