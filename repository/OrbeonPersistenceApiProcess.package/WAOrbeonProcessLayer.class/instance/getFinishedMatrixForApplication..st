other
getFinishedMatrixForApplication: aString

	^BpmFinishedTasksMatrix cache at: aString ifAbsent: [^NoMatrixSlotException signal: 'No Matrix for Application [', aString,']']