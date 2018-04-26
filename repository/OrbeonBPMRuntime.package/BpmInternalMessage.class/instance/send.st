message
send
	"The receiver store itself in each inbox of users contained in collection <to>"
	| recipients |

	sentTime := TimeStamp now.

	recipients := to select: [:each | each isUser].

	"transform roles into users"
	(to select: [:each | each isRole]) do: [:eachRole | recipients addAll: eachRole users].

	self isUserMessage ifTrue: [from outbox acceptEntry: self].
	recipients do: [:eachUser | eachUser getSystemNotificationsInbox acceptEntry: self].

	sendExternalMail ifTrue: [self sendExternalMailToRecipients: recipients]