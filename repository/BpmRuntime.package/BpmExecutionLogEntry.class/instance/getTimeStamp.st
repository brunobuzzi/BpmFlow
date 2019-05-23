other
getTimeStamp

	^timeStamp ifNil: [TimeStamp fromString: '01/01/2500']