outdate
isYearOutDated: aTimeStamp
	"Answer whether or not the receiver is outdated based on it recursion policy <instanceRecursion> <aBpmDashboardYearRecursion> with last execution <aTimeStamp>"
	| nextTime |

	nextTime := TimeStamp date: (aTimeStamp date addYears: 7) time: aTimeStamp time.
 
	^nextTime <= TimeStamp now