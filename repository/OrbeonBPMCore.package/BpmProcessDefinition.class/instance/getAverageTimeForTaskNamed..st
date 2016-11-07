distribution
getAverageTimeForTaskNamed: aString
	| totalTime taskCount |

	taskCount := 0.
	totalTime := processInstances inject: 0 into: [:sum :each | 
							(self hasTaskNamed: aString)
							ifTrue: [taskCount := taskCount + 1.
										sum + (each getTotalTimeOfTaskNamed: aString) asSeconds] 
							ifFalse: [sum] 
					].

	taskCount isZero ifTrue: [^Time fromSeconds: 0].
 
	^Time fromSeconds: ((totalTime / taskCount) asScaledDecimal: 2)