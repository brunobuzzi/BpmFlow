Accessing
getTotalTime

	self hasFinalized ifTrue: [^self getTotalTimeFrom: (endEvents at: (endEvents keys asArray last)) creationTime].

	^self getTotalTimeFrom: currentActivities last creationTime