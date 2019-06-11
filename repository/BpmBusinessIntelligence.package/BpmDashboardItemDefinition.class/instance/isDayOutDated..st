outdated
isDayOutDated: aTimeStamp
	"Answer whether or not the receiver is outdated based on it recursion policy <instanceRecursion> <aBpmDashboardDayRecursion> with last execution <aTimeStamp>"
	| nextTime |

	nextTime := TimeStamp date: (aTimeStamp date addDays: 1) time: aTimeStamp time.
 
	^nextTime <= TimeStamp now