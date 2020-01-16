log
asLogEntry

	^OrderedCollection
		with: (self defaultLogEntryClass newOn: creatorTask type: #creation withTimeStamp: creatorTask creationTime)
		with: (self defaultLogEntryClass newOn: self type: #creation withTimeStamp: createdTime)
		with: (self defaultLogEntryClass newOn: creatorTask type: #finalization withTimeStamp: creatorTask endTime)
		with: (self defaultLogEntryClass newOn: self type: #finalization withTimeStamp: self finalizedDate)