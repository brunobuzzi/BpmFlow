outdate
isWeekOutDated: aTimeStamp
	"Answer whether or not the receiver is outdated based on it recursion policy <instanceRecursion> <aBpmDashboardWeekRecursion> with last execution <aTimeStamp>"
	| nextTime |

	nextTime := TimeStamp date: (aTimeStamp date addDays: 7) time: aTimeStamp time.
 
	^nextTime <= TimeStamp now