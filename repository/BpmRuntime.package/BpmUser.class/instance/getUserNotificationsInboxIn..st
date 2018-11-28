inbox
getUserNotificationsInboxIn: aBpmEnvironment
	"Answer the <aBpmUserInbox> used to store user notifications <BpmUserNotification>"

	^(self getInboxFor: aBpmEnvironment) getUserNotificationsInbox