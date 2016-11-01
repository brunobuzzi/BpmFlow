other
renderDistributionComboOn: html
	| distributionNames |

	distributionNames := self isAllVersionSelected ifTrue: [#('Process Instances')] ifFalse: [#()].

	^self renderDistributionComboOn: html withDistribution: distributionNames