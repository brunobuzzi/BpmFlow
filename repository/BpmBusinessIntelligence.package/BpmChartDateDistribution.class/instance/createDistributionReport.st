other
createDistributionReport
	| error report |

	report := self defaultProcessDefinitionClass 
							reportDateDistributionQuantityForAll: self scope processes 
							for: (self fieldName allButLast: 3) "remove field type -> [d]"
							from: self startDate 
							to: self endDate 
							satisfying: self queryBlock 
							onError: [:ex | error := ex].

	^report name: ('Date Distribution Quantity' translateFor: self user);
		description: (('Scope: Process Definition [' translateFor: self user), self processName, ']');
		seriesName: (('Dates of [' translateFor: self user), self fieldName, ']');
		xTitle: ('Time' translateFor: self user);
		yTitle: ('Time' translateFor: self user);
		exception: error;
		yourself