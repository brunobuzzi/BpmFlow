outdate
isDayOutDated: aTimeStamp
	"Answer whether or not the receiver is outdated based on it recursion policy <instanceRecursion> <aBpmDashboardDayRecursion> with last execution <aTimeStamp>"
	| nextTime |

	nextTime := TimeStamp date: aTimeStamp date time: (aTimeStamp addSeconds: 60*60*24).
 
	^nextTime <= TimeStamp now