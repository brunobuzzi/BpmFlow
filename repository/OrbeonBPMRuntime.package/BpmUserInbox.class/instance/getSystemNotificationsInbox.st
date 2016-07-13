default boxes
getSystemNotificationsInbox

	^boxChildren 
		at: self getSystemNotificationsName 
		ifAbsent: [BasicUserBoxNotFoundException signal: 'There must be a [System Notifications] inbox']