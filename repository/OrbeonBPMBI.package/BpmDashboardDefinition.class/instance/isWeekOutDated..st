outdate
isWeekOutDated: aTimeStamp
	| timeThreshold |

	timeThreshold := TimeStamp date: (aTimeStamp date addDays: 7) time: aTimeStamp time.
 
	^timeThreshold >= TimeStamp now