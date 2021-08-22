log
asLogEntry

	^OrderedCollection 
		with: (self defaultLogEntryClass newOn: self type: #assignmentTaken withTimeStamp: assignationDate)
		with: (self defaultLogEntryClass newOn: self type: #assignmentFinalization withTimeStamp: self taskEndDate)