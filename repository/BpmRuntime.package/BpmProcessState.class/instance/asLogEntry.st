log
asLogEntry

	^OrderedCollection with: (self defaultLogEntryClass newOn: self type: #stateUpdated withTimeStamp: timeStamp)