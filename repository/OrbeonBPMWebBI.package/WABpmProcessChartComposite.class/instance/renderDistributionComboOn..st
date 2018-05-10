render
renderDistributionComboOn: html
	| distributionNames |

	distributionNames := (self isAllVersionSelected ifTrue: [#('Creation Day' 'Field Value' 'Processes Average Time' 'Process Instances')] ifFalse: [#('Creation Day' 'Field Value' 'Tasks Average Time')])
									collect: [:each | each translateFor: self session user].

	^self renderActiveDistributionComboOn: html withDistribution: distributionNames