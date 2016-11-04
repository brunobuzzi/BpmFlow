distribution report
reportInstancesDayDistributionUsing: sortSelector from: startDate to: endDate satisfying: formConditionBlock
	| distribution secondsToRun |

	secondsToRun := Time secondsElapsedTime: [distribution := self getInstancesDayDistributionQuantityUsing: sortSelector from: startDate to: endDate satisfying: formConditionBlock].

	^(BpmProcessDistributionReport processName: self processName applicationName: self applicationName distribution: distribution)
		startDate: startDate;
		endDate: endDate;
		conditionStringBlock: formConditionBlock blockSource;
		distributionMethod: sortSelector;
		sumSecondsToConstruct: secondsToRun;
		yourself