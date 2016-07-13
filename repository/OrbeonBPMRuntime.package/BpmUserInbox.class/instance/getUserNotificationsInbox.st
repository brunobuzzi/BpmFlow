default boxes
getUserNotificationsInbox

	^boxChildren 
		at: self getUserNotificationsName 
		ifAbsent: [BasicUserBoxNotFoundException signal: 'There must be a [User Notifications] inbox']