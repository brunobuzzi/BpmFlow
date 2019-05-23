log
asLogEntry

	^OrderedCollection 
		with: (self defaultLogEntryClass newOn: self type: #creation withTimeStamp: creationTime)
		with: (self defaultLogEntryClass newOn: self type: #finalization withTimeStamp: endTime)