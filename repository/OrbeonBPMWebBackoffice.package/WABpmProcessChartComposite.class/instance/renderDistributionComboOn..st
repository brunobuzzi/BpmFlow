render
renderDistributionComboOn: html
	| distributionNames |

	distributionNames := (self isAllVersionSelected ifTrue: [#('Average Time' 'Creation Day' 'Field Value' 'Process Instances')] ifFalse: [#('Creation Day' 'Field Value')])
									collect: [:each | each translateFor: self session user].

	^self renderActiveDistributionComboOn: html withDistribution: distributionNames