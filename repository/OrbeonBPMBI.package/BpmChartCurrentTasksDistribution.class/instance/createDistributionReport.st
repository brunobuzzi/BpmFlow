other
createDistributionReport
	| report |

	report := self scope user reportCurrentTaskQuantity.
	report name: ('Task Distribution per Role' translateFor: self user);
		description: ('Scope: Application Role' translateFor: self user);
		seriesName: ('Current Tasks' translateFor: self user);
		xTitle: ('Task Name' translateFor: self user);
		yTitle: ('Number of Tasks' translateFor: self user).

	^report