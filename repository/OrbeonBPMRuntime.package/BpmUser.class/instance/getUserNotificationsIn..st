inbox
getUserNotificationsIn: aBpmEnvironment
	"Answer receiver's user notifications <BpmUserNotification>"

	^self getUserNotificationsInbox messages select: [:each | each bpmEnvironment == aBpmEnvironment]