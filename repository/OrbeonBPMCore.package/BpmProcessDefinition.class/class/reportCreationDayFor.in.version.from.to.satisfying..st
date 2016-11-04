distribution report
reportCreationDayFor: processName in: appName version: version from: startDate to: endDate satisfying: satisfyingBlock
	| distribution secondsToRun definitionCollection |

	secondsToRun := 0.
	distribution := OrderPreservingDictionary new.

	definitionCollection := version isNil
			ifTrue: [self getAllProcessesNamed: processName in: appName] 
			ifFalse: [(self getAllProcessesNamed: processName in: appName) select: [:each | each version = version]].

	definitionCollection do: [:procDef | 
		secondsToRun := secondsToRun + (Time secondsElapsedTime: [procDef addTo: distribution instancesDayDistributionFrom: startDate to: endDate satisfying: satisfyingBlock]).
	].

	^(BpmProcessDistributionReport processName: processName applicationName: appName distribution: distribution)
		startDate: startDate;
		endDate: endDate;
		conditionStringBlock: satisfyingBlock blockSource;
		distributionMethod: #createdTime;
		sumSecondsToConstruct: secondsToRun;
		yourself