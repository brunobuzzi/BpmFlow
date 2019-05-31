execution time
getTotalTime

	self hasFinalized ifTrue: [^self getTotalTimeFrom: self endEventsAsOrderedCollection last creationTime].

	^self getTotalTimeFrom: currentActivities last creationTime