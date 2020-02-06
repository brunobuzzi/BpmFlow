other
getFinishedMatrixForApplication: aString

	^(self defaultApplicationManagerClass applicationNamed: aString) finishedTasksMatrix