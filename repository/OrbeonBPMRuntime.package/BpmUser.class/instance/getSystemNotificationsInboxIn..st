inbox
getSystemNotificationsInboxIn: aBpmEnvironment
	"Answer the <aBpmUserInbox> used to store system notifications <BpmSystemNotification>"

	^(self getInboxFor: aBpmEnvironment) getSystemNotificationsInbox