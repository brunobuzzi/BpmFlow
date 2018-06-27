field collection
getSelectedFieldDistribution
	| fieldReport |

	fieldReport := BpmProcessDefinition 
							reportValueSumDistributionFor: self getProcessName
							in: self getApplicationName
							fieldNamed: self getFieldName 
							from: self getStartDate 
							to: self getEndDate 
							satisfying: self queryBlock.

	^fieldReport