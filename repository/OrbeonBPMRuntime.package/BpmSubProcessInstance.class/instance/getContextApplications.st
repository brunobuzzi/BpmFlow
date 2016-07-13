other
getContextApplications
	
	inheritContextApplications ifFalse: [^OrderedCollection new].

	^parentProcess getContextApplications