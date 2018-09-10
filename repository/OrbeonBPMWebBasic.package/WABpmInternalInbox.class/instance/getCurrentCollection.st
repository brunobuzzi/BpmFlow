other
getCurrentCollection

	searchApplied ifTrue: [^searchResult].
	
	self isSystemInboxSelected ifTrue: [^self session user getSystemNotificationsIn: self session bpmEnvironment].

	self isUserInboxSelected ifTrue: [^self session user getUserNotificationsIn: self session bpmEnvironment].

	^#()