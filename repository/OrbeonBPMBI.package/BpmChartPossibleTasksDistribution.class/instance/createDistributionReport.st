other
createDistributionReport
	| report |

	report := self scope user reportPossibleTaskDefinitionsQuantity.
	report name: (('Possible Tasks per Role (total: ' translateFor: self user),  report getTotalValue printString, ')');
		description: ('Scope: User' translateFor: self user);
		seriesName: ('Possible Tasks in this Role' translateFor: self user);
		xTitle: ('Role Name' translateFor: self user);
		yTitle: ('Number of Tasks' translateFor: self user). 

	^report