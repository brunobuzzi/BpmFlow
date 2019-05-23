log
asLogEntry

	^OrderedCollection 
		with: (self defaultLogEntryClass newOn: self type: #creation withTimeStamp: createdTime)
		with: (self defaultLogEntryClass newOn: self type: #finalization withTimeStamp: self finalizedDate)