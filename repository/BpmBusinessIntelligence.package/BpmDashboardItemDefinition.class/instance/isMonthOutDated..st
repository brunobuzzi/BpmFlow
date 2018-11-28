outdate
isMonthOutDated: aTimeStamp
	"Answer whether or not the receiver is outdated based on it recursion policy <instanceRecursion> <aBpmDashboardMonthRecursion> with last execution <aTimeStamp>"
	| nextTime |

	nextTime := TimeStamp date: (aTimeStamp date addMonths: 1) time: aTimeStamp time.
 
	^nextTime <= TimeStamp now