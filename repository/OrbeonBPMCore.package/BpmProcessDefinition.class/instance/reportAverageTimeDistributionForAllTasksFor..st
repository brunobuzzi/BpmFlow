distribution report
reportAverageTimeDistributionForAllTasksFor: aBpmUser
	| secondsToRun distribution |

	secondsToRun := Time secondsElapsedTime: [distribution := self getAverageTimeForAllTasks].
 
	^(BpmProcessDistributionReport processName: processName applicationName: self getApplicationName distribution: distribution)
		name: ('Average Time for All Tasks' translateFor: aBpmUser);
		sumSecondsToConstruct: secondsToRun;
		yourself.