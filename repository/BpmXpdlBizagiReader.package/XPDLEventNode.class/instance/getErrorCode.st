other
getErrorCode
	| code |
	
	code := attributes at: 'errorCode' ifAbsent: [^nil].
	code ifEmpty: [^nil].

	^Number fromString: code