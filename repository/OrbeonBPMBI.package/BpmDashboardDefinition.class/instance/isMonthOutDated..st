outdate
isMonthOutDated: aTimeStamp
	| timeThreshold |

	timeThreshold := TimeStamp date: (aTimeStamp date addMonths: 1) time: aTimeStamp time.
 
	^timeThreshold >= TimeStamp now