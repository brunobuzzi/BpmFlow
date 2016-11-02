other
renderDistributionComboOn: html
	| distributionNames |

	distributionNames := self isAllVersionSelected ifTrue: [#('Creation Day' 'Field Value' 'Process Instances')] ifFalse: [#('Creation Day' 'Field Value')].

	^self renderDistributionComboOn: html withDistribution: distributionNames