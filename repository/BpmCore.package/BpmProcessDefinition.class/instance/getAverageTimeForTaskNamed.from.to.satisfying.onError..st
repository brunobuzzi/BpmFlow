distribution
getAverageTimeForTaskNamed: aString from: startDate to: endDate satisfying: conditionBlock onError: blockError
	"The receiver answer the numer of average seconds to execute a task named <aString> counting from start date <startDate> to end date <endDate> and satifying the query <conditionBlock>"
	| filteredCollection totalTime taskCount |

	taskCount := 0.
	filteredCollection := (self getProcessInstancesCreatedFrom: startDate to: endDate) select: [:procInst | conditionBlock asBpmBlock value: procInst onError: blockError].

	totalTime := filteredCollection inject: 0 into: [:sum :each | 
							((self hasTaskNamed: aString) or: [self hasSubProcessNamed: aString])
							ifTrue: [taskCount := taskCount + 1.
										sum + (each getTotalTimeOfTaskNamed: aString) asSeconds] 
							ifFalse: [sum] 
					].

	taskCount isZero ifTrue: [^Time fromSeconds: 0].
 
	^Time fromSeconds: ((totalTime / taskCount) asScaledDecimal: 2)