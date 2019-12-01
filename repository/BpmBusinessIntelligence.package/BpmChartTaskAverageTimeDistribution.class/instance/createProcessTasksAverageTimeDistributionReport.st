other
createProcessTasksAverageTimeDistributionReport
	| report definition error |

	definition := self scope processes ifEmpty: [^self] ifNotEmpty: [:collection | collection last].
	report := definition reportAverageTimeDistributionForAllTasksFor: self user from: self startDate to: self endDate satisfying: self queryBlock onError: [:ex | error := ex].

	report name: ('Average Time by Process Tasks' translateFor: self user);
		exception: error;
		description: ('Scope: Process Versions' translateFor: self user);
		seriesName: ('Time (s)' translateFor: self user);
		xTitle: ('Task Name' translateFor: self user);
		yTitle: ('Average Time' translateFor: self user). 

	^report