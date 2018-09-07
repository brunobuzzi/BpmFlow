inbox
getUserNotificationsIn: aBpmEnvironment
	"Answer receiver's user notifications <BpmUserNotification>"

	^self filterObjectCollection: self getUserNotificationsInbox messages by: aBpmEnvironment