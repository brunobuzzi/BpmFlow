distribution report
reportValueDistributionForFieldName: fieldName secondaryField: secondaryField in: formName satisfying: formConditionBlock
	""
	| secondsToRun distributionArray |

	secondsToRun := Time secondsElapsedTime: [distributionArray := self getValueDistributionForFieldName: fieldName secondaryField: secondaryField in: formName satisfying: formConditionBlock].
	
	^(BpmRecursiveFieldDistributionReport processName: processName applicationName: self applicationName distribution: distributionArray first)
			sumSecondsToConstruct: secondsToRun;
			addSubDistribution: distributionArray second;
			formName: formName;
			fieldName: fieldName;
			secondaryField: secondaryField;
			yourself