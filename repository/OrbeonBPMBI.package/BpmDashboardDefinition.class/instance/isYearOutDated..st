outdate
isYearOutDated: aTimeStamp
	| timeThreshold |

	timeThreshold := TimeStamp date: (aTimeStamp date addYears: 7) time: aTimeStamp time.
 
	^timeThreshold >= TimeStamp now