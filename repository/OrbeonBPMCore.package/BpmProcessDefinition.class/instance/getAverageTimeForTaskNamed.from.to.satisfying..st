distribution
getAverageTimeForTaskNamed: aString from: startDate to: endDate satisfying: conditionBlock
	| filteredCollection totalTime taskCount |

	taskCount := 0.
	filteredCollection := processInstances select: [:procInst | ((startDate <= procInst createdTime) and: [procInst createdTime <= endDate]) and: [conditionBlock value: procInst]].

	totalTime := filteredCollection inject: 0 into: [:sum :each | 
							((self hasTaskNamed: aString) or: [self hasSubProcessNamed: aString])
							ifTrue: [taskCount := taskCount + 1.
										sum + (each getTotalTimeOfTaskNamed: aString) asSeconds] 
							ifFalse: [sum] 
					].

	taskCount isZero ifTrue: [^Time fromSeconds: 0].
 
	^Time fromSeconds: ((totalTime / taskCount) asScaledDecimal: 2)