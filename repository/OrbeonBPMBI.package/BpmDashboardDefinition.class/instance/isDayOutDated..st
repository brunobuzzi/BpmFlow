outdate
isDayOutDated: aTimeStamp
	| timeThreshold |

	timeThreshold := TimeStamp date: aTimeStamp date time: (aTimeStamp addSeconds: 60*60*24).
 
	^timeThreshold >= TimeStamp now