other
createDistributionReport
	| report |

	report := self scope user reportFinishedTaskQuantityIn: self bpmEnvironment from: self startDate to: self endDate satisfying: self queryBlock.

	report name: (('Finished Tasks (' translateFor: self user), report getTotalValue printString,')');
		description: ('Scope: User' translateFor: self user);
		seriesName: ('Finished Tasks' translateFor: self user);
		xTitle: ('Task Name' translateFor: self user);
		yTitle: ('Number of Tasks' translateFor: self user).

	^report