other
createUserTasksAverageTimeDistributionReport
	| report |

	report := self scope user reportAverageTimePerTask.
	report name: ('User Average Time per Task' translateFor: self user);
		description: ('Scope: User' translateFor: self user);
		seriesName: ('Time (s)' translateFor: self user);
		xTitle: ('Task Name' translateFor: self user);
		yTitle: ('Time (s)' translateFor: self user). 

	^report