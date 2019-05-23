log
asLogEntry

	^OrderedCollection with: (self defaultLogEntryClass newOn: self type: #transitionCreated withTimeStamp: self creationTime)