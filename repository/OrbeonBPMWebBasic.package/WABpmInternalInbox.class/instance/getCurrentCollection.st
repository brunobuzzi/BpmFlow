other
getCurrentCollection

	self isSystemInboxSelected ifTrue: [^self session user getSystemNotifications].

	self isUserInboxSelected ifTrue: [^self session user getUserNotifications].

	^#()