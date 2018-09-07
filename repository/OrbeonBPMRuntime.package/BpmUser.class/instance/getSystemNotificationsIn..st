inbox
getSystemNotificationsIn: aBpmEnvironment
	"Answer receiver's system notifications <BpmSystemNotification>"

	^self filterObjectCollection: self getSystemNotificationsInbox messages by: aBpmEnvironment