message
send
	"The receiver store itself in each inbox of users contained in collection <to>"
	| recipients |

	sentTime := TimeStamp now.

	recipients := self getRecipients.

	self isUserMessage ifTrue: [from outbox acceptEntry: self].
	recipients do: [:eachUser | eachUser getSystemNotificationsInbox acceptEntry: self].

	sendExternalMail ifTrue: [self sendExternalMailToRecipients: recipients]