distribution report
reportAverageTimeDistributionForAllTasksFor: aBpmUser
	| secondsToRun distribution |

	secondsToRun := Time secondsElapsedTime: [distribution := self getAverageTimeForAllTasksIn: self bpmEnvironment].
 
	^(BpmProcessDistributionReport processName: processName applicationName: self getApplicationName distribution: distribution)
		name: ('Average Time for All Tasks' translateFor: aBpmUser);
		sumSecondsToConstruct: secondsToRun;
		version: version;
		yourself.