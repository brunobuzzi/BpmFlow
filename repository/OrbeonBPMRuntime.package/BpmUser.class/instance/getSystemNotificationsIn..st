inbox
getSystemNotificationsIn: aBpmEnvironment
	"Answer receiver's system notifications <BpmSystemNotification>"

	^self getSystemNotificationsInbox messages select: [:each | each bpmEnvironment == aBpmEnvironment]