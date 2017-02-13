adding exception
removeExceptionTimeFrom: startTime to: endTime
	"The receiver add a time interval <startTime> to <endTime> to the exception hours collection.
	This time interval is NOT going to be counted in processes execution time."
	| intervalArray |

	intervalArray := hours detect: [:each | (each first = startTime) and:[each second = endTime]] ifNone: [^self]. 
	
	^hours remove: intervalArray