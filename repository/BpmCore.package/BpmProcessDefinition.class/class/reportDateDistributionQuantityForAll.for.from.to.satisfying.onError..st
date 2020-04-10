distribution report
reportDateDistributionQuantityForAll: processDefinitions for: fieldName from: startDate to: endDate satisfying: conditionBlock onError: errorHandler
	| secondsToRun distribution distributionDictionary appName processName version |

	distributionDictionary := OrderPreservingDictionary new.
	version := processDefinitions last version.
	processName := processDefinitions last processName.
	appName := processDefinitions last applicationName.

	secondsToRun := Time secondsElapsedTime: [
		processDefinitions do: [:procDefinition | 
			distribution := procDefinition addTo: distributionDictionary
									instancesDayDistributionQuantityUsingBlock: [:proc | proc getValueOfProcessField: fieldName] 
									from: startDate 
									to: endDate 
									satisfying: conditionBlock 
									onError: errorHandler].
		].
 
	^(BpmFieldDistributionReport processName: processName applicationName: appName distribution: distribution)
		startDate: startDate;
		endDate: endDate;
		fieldName: fieldName;
		sumSecondsToConstruct: secondsToRun;
		version: version;
		yourself.