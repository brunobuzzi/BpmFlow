distribution report
reportInstancesDayDistributionUsing: sortSelector from: startDate to: endDate satisfying: formConditionBlock
	| distribution secondsToRun error |

	secondsToRun := Time secondsElapsedTime: [distribution := self getInstancesDayDistributionQuantityUsing: sortSelector from: startDate to: endDate satisfying: formConditionBlock onError: [:ex | error := ex]].

	^(BpmProcessDistributionReport processName: self processName applicationName: self applicationName distribution: distribution)
		exception: error;
		startDate: startDate;
		endDate: endDate;
		conditionStringBlock: formConditionBlock blockSource;
		distributionMethod: sortSelector;
		sumSecondsToConstruct: secondsToRun;
		version: version;
		yourself