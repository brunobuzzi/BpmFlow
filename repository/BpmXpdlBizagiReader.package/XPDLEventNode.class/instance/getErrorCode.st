other
getErrorCode
	| code |
	
	code := attributes at: 'errorCode' ifAbsent: [^nil].

	^Number fromString: code