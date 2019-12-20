distribution report
reportTasksInstancesFor: aBpmUser
	| secondsToRun distribution |

	"secondsToRun := Time secondsElapsedTime: [distribution := self getAverageTimeForAllTasksIn: self bpmEnvironment]."

	^(BpmTasksInstancesDistributionReport processName: processName applicationName: self getApplicationName distribution: Dictionary new)
		"name: ('Average Time for All Tasks' translateFor: aBpmUser);"
		"sumSecondsToConstruct: secondsToRun;"
		version: version;
		yourself.