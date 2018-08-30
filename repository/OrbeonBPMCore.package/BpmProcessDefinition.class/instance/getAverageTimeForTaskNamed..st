distribution
getAverageTimeForTaskNamed: aString
	"The receiver answer the number of average seconds to execute a task named <aString>"
	| totalTime taskCount |

	taskCount := 0.
	totalTime := processInstancesSet inject: 0 into: [:sum :each | 
							((self hasTaskNamed: aString) or: [self hasSubProcessNamed: aString])
							ifTrue: [taskCount := taskCount + 1.
										sum + (each getTotalTimeOfTaskNamed: aString) asSeconds] 
							ifFalse: [sum] 
					].

	taskCount isZero ifTrue: [^Time fromSeconds: 0].
 
	^Time fromSeconds: ((totalTime / taskCount) asScaledDecimal: 2)